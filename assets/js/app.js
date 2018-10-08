//VueJS Framework

var app = new Vue({
    el: '#app',
    data: {
        fetchData: '',
        updateProgress: ''
    },
    created: function() {
        //Initiate api load on page load and update database frequently
        this.updateProgress = "Updating data.....";   
        this.fetchData = setInterval(function() {
            
            this.getAPIData();
            this.getStoredPopulationData();
       
        }.bind(this), 60000);
        
        this.getStoredData();
        
    },methods: {

        //Methods Implementated
        getAPIData: function() {
            //Count the received data and store on localstorage for Application logic 
            $.getJSON("https://api.worldbank.org/v2/countries/all/indicators/SP.POP.TOTL?format=json", function(data) {
                window.localStorage.setItem('TotalPopulation', data[1].length);
            });

        },getStoredData: function() {
            //Get world bank data from Json API 
            axios.get('http://41.215.35.52/geo_me/population/api/index.php/data/get_stored_data', {}).then(response => {

                console.log(response.data[0]['country']);

            }).catch(function(error) {
                console.log(error);
            });

        },
        getStoredPopulationData: function() {
            //Count array from MySQL Database compare it with json array, if database is empty insert otherwise update date in intervals
            axios.get('http://41.215.35.52/geo_me/population/api/index.php/data/count_stored_data', {}).then(response => {

                //Get API Data Counted and stored on localstorage frequently
                var apiStoredCount = window.localStorage.getItem("TotalPopulation");
                //Application Logic to compare data from the database and API receiver and insert if no data on database else update data by year
                if (response.data.length <= 0 || apiStoredCount > response.data.length) {
                    this.storePopulation();
                }  else {
                    this.updatestoredPopulation();
                }

            }).catch(function(error) {
                console.log(error);
            });
            
        },updatestoredPopulation: function() {
              //Receive Json API data and update to database
              $.getJSON("https://api.worldbank.org/v2/countries/all/indicators/SP.POP.TOTL?format=json", function(data) {
                
                for (count = 0; count < data[1].length; count++) {
                   
                    var country = data[1][count]['country'].value;
                    var date = data[1][count]['date'];
                    var value = data[1][count]['value'];
                    var countJsonData = data[1].length;

                    //Update consumed json array to Mysql Database

                    axios.get('http://41.215.35.52/geo_me/population/api/index.php/data/UpdatePopulatonJson', {
                        params: {
                            Country: country,
                            Date: date,
                            Value: value,
                            JsonCount: countJsonData
                        }
                    }).then(response => {

                        console.log(response)
                        
                    }).catch(function(error) {
                        console.log(error);
                    });
                }
            });

            this.updateProgress = "Data updated....."; 

        },storePopulation: function() {

            //Receive Json API data

            $.getJSON("https://api.worldbank.org/v2/countries/all/indicators/SP.POP.TOTL?format=json", function(data) {

                console.log(data[1].length)

                for (count = 0; count < data[1].length; count++) {
                   
                    var country = data[1][count]['country'].value;
                    var date = data[1][count]['date'];
                    var value = data[1][count]['value'];
                    var countJsonData = data[1].length;


                    //Store consumed json array to Mysql Database

                    axios.get('http://41.215.35.52/geo_me/population/api/index.php/data/StorePopulatonJson', {
                        params: {
                            Country: country,
                            Date: date,
                            Value: value,
                            JsonCount: countJsonData
                        }
                    }).then(response => {

                        console.log(response)

                    }).catch(function(error) {
                        console.log(error);
                    });
                }
            });

        }
    }
})

//Draw line graph of trends on page loaded

$(document).ready(function() {

    var year = [];
    var population = [];

    $.getJSON("http://41.215.35.52/geo_me/population/api/index.php/data/get_population_within_each_year", function(data) {
        $.each(data, function(key, value) {
            //Push Year and Population values to Highchart 
            year.push(value['year']);
            population.push(parseInt(value['population']));
        });

        Highcharts.chart('container', {
            chart: {
                type: 'line'
            },
            title: {
                text: 'Trends in Population within Arab World'
            },
            subtitle: {
                text: 'Source: World Bank'
            },
            xAxis: {
                categories: year
            },
            yAxis: {
                title: {
                    text: 'Population'
                }
            },
            plotOptions: {
                line: {
                    dataLabels: {
                        enabled: true
                    },
                    enableMouseTracking: true
                }
            },
            series: [{
                name: 'Year',
                data: population
            }]
        });
    });
});
