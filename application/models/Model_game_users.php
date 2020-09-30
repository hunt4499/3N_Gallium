<?php 

class Model_game_users extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getData($id = null,$status = null) 
	{
		$this->db->select('US.*, GU.name as name,GU.email as email,GU.mobile_no,GU.last_logged_in,GU.subscription_from,GU.subscription_to');

        $this->db->from('user_state as US');
        $this->db->join('game_users as GU','GU.id=US.user_id','left');
		
        if(!empty($id)){
             $this->db->where('id', $id);
			 return $this->db->get()->row_array();
        }
		if($status != null && $status == 'PAID' ){
		$this->db->where('subscription_to >=',date('Y-m-d H:i:s'));
		}
		if($status != null && $status == 'UNPAID'){
		$this->db->where('GU.subscription_to <',date('Y-m-d H:i:s'));
		$this->db->or_where('GU.subscription_to',null);
		}
		$this->db->order_by('US.state_updated_at','DESC');
        return $this->db->get()->result_array();
		
		
	}


	function duplicate_check($cond)
    {

        if (!empty($cond)) {
            $this->db->where($cond);
        }
        return $this->db->get('game_users')->num_rows();
		}
		

		function get_single_auth($table_name, $index_array, $columns = null)
    {

        if ($columns)
            $this->db->select($columns);

        $this->db->order_by('id', 'desc');
        $this->db->limit(1);

        $row = $this->db->get_where($table_name, $index_array)->row();

        return $row;
    }	


	
}