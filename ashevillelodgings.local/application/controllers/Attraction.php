<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Attraction extends CI_Controller {


	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Website');
		$this->load->library('parser');
	}

	public function index()
	{
		$data = array(
			'Property_menue'=>$this->Api->property_2(),
			'home_heading' => $this->Api->get('lhk_home_details','home_heading'),
			'home_content' => $this->Api->get('lhk_home_details','home_content'),
			'property_heading'=>$this->Api->get('lhk_property_details','property_heading'),
			'gallery'=>$this->Api->area_info(),
			'guest_r'=>$this->Api->gets_review(),
			'property_r'=>$this->Api->property_(),
			'base_url'=>base_url(''),
            'assets_url'=>base_url('assets/')
            
            //'attraction'=>$this->Api->attraction(),
	);
		$this->parser->parse('attraction', $data);
		//$this->load->view('home');
	}



	
}
