<?php
	class Sport extends CI_Model {
		public function get_players_name($data, $gender, $sport) {
			$query = "SELECT * FROM players LEFT JOIN sports ON players.sport_id = sports.id WHERE (first_name LIKE '%$data%' OR last_name LIKE '%$data%') AND gender = '$gender' AND sports.name = '$sport'";
			return $this->db->query($query)->result_array();
		}
	}
?>