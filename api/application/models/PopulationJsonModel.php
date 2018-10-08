<?php

class PopulationJsonModel extends CI_Model {

    public function get_all_surveys() {

        $this->db->select('*');
        $this->db->from('survey');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function update_data($country,$year,$value){

        $populationData = array(
                    'country'=>$country,
                    'year'=>$year,
                    'population'=>$value
        );
        $this->db->where('year', $year);
        $this->db->update('o_data', $populationData); 
    }

    public function store_data($country,$year,$value){

        $populationData = array(
                    'country'=>$country,
                    'year'=>$year,
                    'population'=>$value
        );
       return $this->db->insert('o_data', $populationData);
    }

    public function count_data(){

        $this->db->select('*');
        $this->db->from('o_data');
        $query = $this->db->get();
        return $query->result_array();

    }

    public function get_data(){

        $this->db->select('*');
        $this->db->from('o_data');
        $query = $this->db->get();
        return $query->result_array();

    }

    public function get_data_within_year(){

        $this->db->select('year,population');
        $this->db->from('o_data');
        $query = $this->db->get();
        return $query->result_array();

    }   

	
}
