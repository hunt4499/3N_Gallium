<?php

class Contactus extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->data = [];
		$this->load->view('includes/header', $this->data);
		$this->load->view('contactus', $this->data);
		$this->load->view('includes/footer', $this->data);
	}
	public function sendmail()
	{
		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'vikas.fourbrick@gmail.com', // change it to yours
			'smtp_pass' => 'Vikas@123', // change it to yours
			'mailtype' => 'html',
			'charset' => 'iso-8859-1',
			'wordwrap' => TRUE
		);
		
						$message = '';
						$this->load->library('email', $config);
					$this->email->set_newline("\r\n");
					$this->email->from('vikas.fourbrick@gmail.com'); // change it to yours
					$this->email->to('vikas.fourbrick@gmail.com');// change it to yours
					$this->email->subject('Resume from JobsBuddy for your Job posting');
					$this->email->message($message);
					if($this->email->send())
				 {
					echo 'Email sent.';
				 }
				 else
				{
				 print_r($this->email->print_debugger());
				 die();
				}
		redirect('contactus');
	}


	public function send()
	{

		$data['app'] = $this->app->getappbyid();

		$emailuser = $this->input->post('useremail');
		$emaildriver = $this->input->post('emaildriver');

		$emailothers = $this->input->post('emailothers');
		$sendto = $this->input->post('sendto');

		if ($sendto == 'users') {
			$emailuser = $emailuser;
		} elseif ($sendto == 'drivers') {
			$emailuser = $emaildriver;
		} else {
			$emailuser = $emailothers;
		}
		$subject = $this->input->post('subject');
		$emailmessage = $this->input->post('content');
		$host = $data['app']['smtp_host'];
		$port = $data['app']['smtp_port'];
		$username = $data['app']['smtp_username'];
		$password = $data['app']['smtp_password'];
		$from = $data['app']['smtp_from'];
		$appname = $data['app']['app_name'];
		$secure = $data['app']['smtp_secure'];
		$address = $data['app']['app_address'];
		$linkgoogle = $data['app']['app_linkgoogle'];
		$web = $data['app']['app_website'];

		$content = $this->email_model->template2($subject, $emailmessage, $address, $appname, $linkgoogle, $web);


		$this->email_model->emailsend($subject, $emailuser, $content, $host, $port, $username, $password, $from, $appname, $secure);
		$this->session->set_flashdata('send', 'Email has been Sended');
		redirect('contactus');
	}
}
