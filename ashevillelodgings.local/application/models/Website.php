<?php

   class Website extends CI_Model{

  public function lhk_files($prop_id){
	  $this->db->order_by('menu_order','ASC');
	  //$this->db->set_limit(0,1);
	 $r= $this->db->get_where('lhk_files',array('property_id'=>$prop_id));
	 $r=$r->result();
	 return $r[0]->file_name;
  }

  public function lhk_files2($prop_id){
	$this->db->order_by('menu_order','ASC');
	//$this->db->set_limit(0,1);
   $r= $this->db->get_where('lhk_files',array('property_id'=>$prop_id));
   $r=$r->result();
   return $r;
}

public function pro_rate($id){
	$r=$this->db->get_where('lhk_property_new_rates',array('property_id'=>$id));
	$r=$r->result();
	return $r;
}

  public function property($id=null){
		//$this->db->set_limit(0,2);
		if($id==null){
			$r=$this->db->get('lhk_property_details');
		}
	  else{
		$r=$this->db->get_where('lhk_property_details',array('property_id'=>$id));
	  }
	  return $r->result();
	}
	
	public function review($id){
		//$this->db->order_by(array('id'=>'desc'));
		$r=$this->db->get_where('lhk_reviews_detail',array('property_id'=>$id));
		return $r->result();
	}

  public function property_rate($id=null){
	//$this->db->set_limit(0,2);
	$r=$this->db->get_where('lhk_property_default_rates',array('property_id'=>$id));
  return $r->result();
}

 /* public function get_media($pro_id){
	$this->db->select('pro_def_rate_rates');
	$r=$this->db->get_where('lhk_property_default_rates',array('property_id'=>$pro_id));
	$r=$r->result();
	return $r[0]->pro_def_rate_rates;
  }
*/
  function get_rate($pro_id){
	$this->db->select('pro_def_rate_rates');
	$r=$this->db->get_where('lhk_property_default_rates',array('property_id'=>$pro_id));
	$r=$r->result();
	return $r[0]->pro_def_rate_rates;
  }

  function contacts(){
	  $r=$this->db->get('lhk_contact_details');
	  $r=$r->result();
	  return $r[0];
  }

  function about(){
	  $r=$this->db->get('lhk_about_property');
	  $r=$r->result();
	  return $r[0];
  }

  function Social_link(){
	  $r=$this->db->get('lhk_social_links');
	  $r=$r->result();
	  return $r[0];
  }

  /*************SOAP*************************** */
  public function home_d(){
	@$r=$this->db->get('home_details');
	@$r=$r->result();
	return @$r[0];
}





   }






?>