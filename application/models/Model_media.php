 <?php 

class Model_media extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
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
	public function saveMedia($data) {
		  return $this->db->insert('media',$data);
	}
	
}