<?php 

class Deals extends MY_Controller 
{
	public function __construct()
	{
		parent::__construct();

		
		
	}

	public function index()
	{
		$this->data = [];
		$this->load->view('includes/header', $this->data);
		$this->load->view('deals', $this->data);
		$this->load->view('includes/footer', $this->data);
		 
		//$this->render_template('welcome_message', $this->data);
	}
}