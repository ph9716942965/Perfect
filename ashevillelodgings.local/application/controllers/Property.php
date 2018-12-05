<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Property extends CI_Controller {


	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Website');
		$this->load->library('parser');
	}

	public function index($pid=null)
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
            'assets_url'=>base_url('assets/'),
            'property'=>$this->Api->propertyall($pid),
            'fls'=>$this->Api->fls($pid),
            'pro_rate'=>$this->Api->pro_rate($pid),
            //'attraction'=>$this->Api->attraction(),
            'db'=>$this->Website->property($pid),
            'edb'=>$this->Website->property_rate($pid),//for property rate card value
            'fdb'=>$this->Api->lhk_files2($pid),
            'rdb'=>$this->Website->pro_rate($pid),//for property rate table
            'reviewdb'=>$this->Website->review($pid),
	);
        //$this->parser->parse('property', $data);
        $this->parser->parse('property_detail', $data);
		//$this->load->view('home');
	}

    function test($id=null){
        $data = array(
		//'home_heading' => $this->Api->get('lhk_home_details','home_heading'),
        //'assets_url'=>base_url('assets/'),
        //'property'=>$this->Api->propertyall($id),
        ///'fdb'=>$this->Api->lhk_files2($id),
        'property'=>$this->Api->propertyall($id),
        );
    var_dump($data);
        }
	
}
