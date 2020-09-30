<?php 

class Model_report extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getYear()
	{
		// $sql = "SELECT * FROM wallet WHERE add_money != ?";
		// $query = $this->db->query($sql, array(NULL));
		// $result = $query->result_array();
		 	$this->db->select('*');
		 	$this->db->from('wallet');
			$this->db->where('add_money!=','');
			$query = $this->db->get();
			$result = $query->result_array();

	
		$return_data = array();
		foreach ($result as $k => $v) {
			
			$date = date('Y', strtotime($v['created_at']));
			$return_data[] = $date;
		}
		

		$return_data = array_unique($return_data);

		return $return_data;
	}

	public function getData($year)
	{	
		if($year) {
			$months = $this->months();
			
			// $sql = "SELECT * FROM wallet WHERE add_money != ?";
			// $query = $this->db->query($sql, array(null));
			// $result = $query->result_array();
			$this->db->select('*');
			$this->db->from('wallet');
			$this->db->where('add_money!=','');
			$query =$this->db->get();
			$result = $query->result_array();
			$final_data = array();
			foreach ($months as $month_k => $month_y) {
				$get_mon_year = $year.'-'.$month_y;	

				$final_data[$get_mon_year][] = '';
				foreach ($result as $k => $v) {
					$month_year = date('Y-m', strtotime($v['created_at']));

					if($get_mon_year == $month_year) {
						$final_data[$get_mon_year][] = $v;
					}
				}
			}	


			return $final_data;
			
		}
	}

	private function months()
	{
		return array('01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12');
	}
}