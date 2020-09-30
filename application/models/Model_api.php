<?php 

class Model_api extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getWallet($user_id){
		$this->db->select('*');
		$this->db->from('wallet');
		$this->db->where('user_id',$user_id);
		$this->db->order_by("id",'DESC');
		$query= $this->db->get();
		  return $query->row_array();
	}
	
	public function check($data,$table ,$select = "*") 
	{
		if($data) {
			
			$this->db->select($select);
			$this->db->from($table);
			foreach($data as $key=>$value){
				$this->db->where($key,$value);
			}
			$query =$this->db->get();
			// echo $this->db->last_query();
			// die();
			return $result = $query->row();
			}

		return false;
	}
	public function getData($id = null ,$category){

		$this->db->select("*");
		$this->db->from('media');
		$this->db->where('category',$category);
		if($id != null){
			$this->db->where('id',$id);
			return $this->db->get()->row_array();
		}
		return $this->db->get()->result_array();

	}

    public function gettoplevelData(){

		$this->db->select("id,name,level,location,distance");
		$this->db->from('game_users');
		$this->db->order_by('distance','DESC');
		$this->db->limit(100);
		return $this->db->get()->result_array();

	}

}

?>