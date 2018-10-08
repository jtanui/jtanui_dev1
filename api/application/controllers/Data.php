<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {

	public function __construct() {
		parent:: __construct();
		//CRUD Model Functionality for database incoming and outgoing data 
        $this->load->model('PopulationJsonModel'); 
    }

	//Function to Store data to Mysql relational database
	public function StorePopulatonJson()
	{    
		$country = $this->input->get('Country', TRUE);
		$year = $this->input->get('Date', TRUE);
		$value = $this->input->get('Value', TRUE);
		$JsonCount = $this->input->get('JsonCount', TRUE);
		$data['true'] = $this->PopulationJsonModel->store_data($country,$year,$value);

	}

	//Function to Update data to Mysql relational databse
	public function UpdatePopulatonJson()
	{    
		$country = $this->input->get('Country', TRUE);
		$year = $this->input->get('Date', TRUE);
		$value = $this->input->get('Value', TRUE);
		$JsonCount = $this->input->get('JsonCount', TRUE);
		$data['true'] = $this->PopulationJsonModel->update_data($country,$year,$value);

	}

	//Count stored data in Mysql Relational database

	public function count_stored_data()
	{

		$counted_data = $this->PopulationJsonModel->count_data();
		echo json_encode($counted_data);

	 }

	 //Get stored data in Mysql Relational database

	 public function get_stored_data()
	{

		$get_data = $this->PopulationJsonModel->get_data();
		echo json_encode($get_data);
	}

	//Get both year and population data
	
	public function get_population_within_each_year()
	{

		$jsonarray = $this->PopulationJsonModel->get_data_within_year();
		echo json_encode($jsonarray);

	}

}
