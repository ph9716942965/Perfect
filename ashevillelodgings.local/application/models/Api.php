<?php

   class Api extends CI_Model{

    public function home(){
       $r= $this->db->get('lhk_home_details');

    }

    public function property_h(){

       //$this->db->order_by('id', 'DESC');
       //$this->db->limit(0, 6);
       $this->db->select(array('img','heading'));
       $r=$this->db->get('lhk_area_info');
        return $r->result();
      // var_dump($r->result());
        //echo json_encode($r->result());
    }

    public function get($tbl,$col){
        $this->db->select($col);
        $r=$this->db->get($tbl);
        $r= $r->result();
        return html_entity_decode($r[0]->$col);
    }

    public function area_info(){
        $this->db->select('img,FROM_BASE64(heading) as heading,HTML_UnEncode(`content`) as content');
        $r=$this->db->get('lhk_area_info',0,6);
        $r= $r->result();
        return $r;
        //return html_entity_decode($r[0]->$col);
    }

    public function gets_review(){
        $this->db->select('`id`,`property_id`,`admin_id`,`img`,`c_name`,`heading`,`c_place`,`sdate`,`status`,`added_date`,`r_update_date`, SUBSTRING(`c_review`, 1, 200) as c_review');
        $this->db->order_by('id','desc');
        //SUBSTRING(`text`, 1, 100)
        $r=$this->db->get('lhk_reviews_detail',0,6);
        $r=$r->result();
        return $r;

    }

    function dco($str){
        return substr(html_entity_decode($str), 0, 200);
    }

    function dcoarr($arr,$k){
        foreach($arr as $K=>$V){
            //$arr
        }
    }

    public function property_(){
        $r=$this->db->query('SELECT l.property_id, l.property_heading , f.* FROM lhk_property_details l,lhk_files f WHERE f.property_id=l.property_id group by f.property_id ORDER BY menu_order ASC');
        //$this->db->select('property_id,property_heading');
        //$r=$this->db->get('lhk_property_details');
        
        return $r->result();
    }

    public function property_2(){
         $this->db->select('property_id,property_heading');
        $r=$this->db->get('lhk_property_details');
        return $r->result();
    }

    public function propertyall($id){
        $r=$this->db->get_where('lhk_property_details',array('property_id'=>$id));
        return $r->result();
    }

    public function fls($id){
        $r=$this->db->get_where('lhk_files',array('property_id'=>$id));
        return $r->result();
    }

    public function Review(){
        $this->db->select('`id`,`property_id`,`admin_id`,`img`,`c_name`,`heading`,`c_place`,`sdate`,`status`,`added_date`,`r_update_date`, SUBSTRING(`c_review`, 1, 200) as c_review');
        $this->db->order_by('id','desc');
        //$r=$this->db->get_where('lhk_reviews_detail',array('status'=>1));
        $r=$this->db->get('lhk_reviews_detail',0,6);
        return $r->result();
    }
    public function pro_rate($id){
        $r=$this->db->get_where('lhk_property_new_rates',array('property_id'=>$id));
        $r=$r->result();
        return $r;
    }
   
    public function lhk_files2($prop_id){
        $this->db->order_by('menu_order','ASC');
        //$this->db->set_limit(0,1);
       $r= $this->db->get_where('lhk_files',array('property_id'=>$prop_id));
       $r=$r->result();
       return $r;
    }
    

    public function attraction(){

    }

   }