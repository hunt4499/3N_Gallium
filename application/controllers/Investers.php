<?php 

class Investers extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();

		
		
	}

	public function index()
	{
		$this->data = [];
		$this->load->view('includes/header', $this->data);
		$this->load->view('investers', $this->data);
		$this->load->view('includes/footer', $this->data);
		 
		//$this->render_template('welcome_message', $this->data);
	}
}