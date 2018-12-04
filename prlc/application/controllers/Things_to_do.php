<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Things_to_do extends CI_Controller {

	
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->load->model('Website');
	}
	public function index($id=null)
	{
		//$db['db']=$this->Website->property($id);
		//$db['edb']=$this->Website->property_rate($id);
		//$db['fdb']=$this->Website->lhk_files2($id);
		//var_dump($db['fdb']);
		//$this->load->view('thingstodo');
		$this->load->view('todo');
	}
}
