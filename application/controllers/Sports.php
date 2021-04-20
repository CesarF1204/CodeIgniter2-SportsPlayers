<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sports extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index(){
		$this->load->view('sports/index.php');
	}
	public function search() {
		$this->load->model('Sport');
		$name = $this->input->get('name');
		$gender = $this->input->get('gender');
		$sport = $this->input->get('sport');
		$get_players_name = $this->Sport->get_players_name($name, $gender, $sport);
		$this->load->view('sports/index.php', array('get_players_name' => $get_players_name));
	}
}