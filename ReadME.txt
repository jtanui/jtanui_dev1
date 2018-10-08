Introduction

The application consumes data from https://api.worldbank.org/v2/countries/all/indicators/SP.POP.TOTL?format=json
The fetched data is dumped on the database and updated in intervals of 60 seconds
The dumped and updated data is consumed by the application through a Rest Application Programming Interface.
The User Interface displays data on a line graph showing the trends in population within the Arab World

Instruction

The application has a folder called api.
Navigate to api\application\config
Configure the database authorizations on a file called database.php

Navigate to \Database File Folder it contains the SQL file

Example

$db['default'] = array(
    'dsn' => 'mysql:host=192.168.********; dbname= p*****',
    'hostname' => '192.168.******',
    'username' => 'root',
    'password' => '******',
    'database' => '',
    'dbdriver' => 'pdo',
    'dbprefix' => '',
    'pconnect' => FALSE,
    'db_debug' => (ENVIRONMENT !== 'production'),
    'cache_on' => FALSE,
    'cachedir' => '',
    'char_set' => 'utf8',
    'dbcollat' => 'utf8_general_ci',
    'swap_pre' => '',
    'encrypt' => TRUE,
    'compress' => FALSE,
    'stricton' => FALSE,
    'failover' => array(),
    'save_queries' => TRUE
); 

Configure the access URL to the API transactions on a file called config.php

Example

$config['base_url'] = 'http//41.215.********/geo_me/population/api/index.php'; (It can be the server public facing IP or DNS)


PHP API controller
api\application\controllers

PHP API Model
api\application\models

Attached is the SQL file document run the file on a MYSQL Database

Language used: PHP Codeigniter Framework for API Application Logics, VueJS Javascript Framework, Axios : promise based HTTP client for the browser, HTML5,CSS framework with Sass Template, 
Storage Used: MYSQL Database and Localstorage
API:  https://api.worldbank.org/v2/countries/all/indicators/SP.POP.TOTL?format=json 

Javascript Logics and methods can be found in assets/js/app.js



The live application can be found within this URL
http://41.215.35.52/geo_me/population/

