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
		if (isset($_POST)) {



			$data['firstname'] = $this->input->post('firstname');
			$data['lastname'] = $this->input->post('lastname');
			$data['emailothers'] = $this->input->post('emailothers');
			$data['companyname'] = $this->input->post('companyname');
			$data['phoneNumber'] = $this->input->post('phoneNumber');
			$data['content'] = $this->input->post('content');
			$data['subject'] = $this->input->post('subject');
			




			/***********************validation **************** */
			$secret = '6LfkO9IZAAAAABHh7TVroR3smcx0WnxBEQbI4WJH';
			$res = FALSE;
			// Captcha Validation -> 
			if (!empty($_POST['g-recaptcha-response'])) {
				$responsekey = $_POST['g-recaptcha-response'];
				$userIP = $_SERVER['REMOTE_ADDR'];
				$URL = "https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$responsekey&remoteip=$userIP";
				$response = file_get_contents($URL);
				$response = json_decode($response);
				$res = $response->success;
			}

			if ($res) {
				//form validation ->
				$this->load->library('form_validation');
				$this->form_validation->set_rules('firstname', 'First name', 'required');
				$this->form_validation->set_rules('lastname', 'Last name', 'required');
				$this->form_validation->set_rules('emailothers', 'Email', 'required');
				$this->form_validation->set_rules('companyname', 'Company name', 'required');
				$this->form_validation->set_rules('phoneNumber', 'Phone Number', 'required');
				$this->form_validation->set_rules('content', 'Discription', 'required');
				$this->form_validation->set_rules('subject', 'Subject', 'required');
				if ($this->form_validation->run() == TRUE) {
					/***********************mail config*************** */
					$config = array(
						'protocol' => 'smtp',
						'smtp_host' => 'ssl://smtp.googlemail.com',
						'smtp_port' => 465,
						'smtp_user' => 'vikas.fourbrick@gmail.com', // change it to yours
						'smtp_pass' => 'Vikas@123', // change it to yours
						'mailtype' => 'html',
						'charset' => 'iso-8859-1',
						'wordwrap' => TRUE
					);
					/****************************************************** */

					$data['message'] = $data['content'] . "<br/>" .	"Name : " . $data['firstname'] . " " . $data['lastname'] . "<br/> 
					Company : " . $data['companyname'] . "<br/>
					phoneNumber : " .	$data['phoneNumber'] . "<br/>
					";
					$template =	$this->load->view('email_template', $data, TRUE);
					$subject = $data['subject'];
					/*************************************************************
					 *      php mailer 
					 ************************************************************* */
					$this->load->library('email', $config);
					$this->email->set_newline("\r\n");
					$this->email->from('vikas.fourbrick@gmail.com');
					$this->email->to(trim($this->input->post('emailothers')));
					$this->email->subject($subject);
					$this->email->message($template);
					$list = array('nmn@3ngv.com', 'mailto:nmn@3ngv.com', 'jsn@3ngv.com');
					$this->email->cc($list);

					if ($this->email->send()) {
						$this->session->set_flashdata('send', 'Email has been Sended');
					} else {
						$this->session->set_flashdata('notsend', 'Email not send');
					}
					redirect('contactus');
				} else {
					$this->session->set_flashdata('notsend', 'Please fill all field');
					$this->load->view('includes/header', $data);
					$this->load->view('contactus', $data);
					$this->load->view('includes/footer', $data);
				}
			} else {
				$this->session->set_flashdata('captcha', 'invailed Captcha');
				$this->load->view('includes/header', $data);
				$this->load->view('contactus', $data);
				$this->load->view('includes/footer', $data);
			}
		} else {
				redirect('contactus');
		}
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
