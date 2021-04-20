<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sports Player Lookup</title>
	<link rel="stylesheet" href="/user_guide/css/style.css">
</head>
<body>
	<form action="/sports/search" method='get'>
		<label for="name">Search Users</label>
		<input type="text" name="name" id="name"><br> 

		<input type="radio" name="gender" id="female" value="Female">
		<label for="female">Female</label><br>

		<input type="radio" name="gender" id="male" value="Male">
		<label for="male">Male</label>

		<p>Sports</p>
		<input type="checkbox" name="sport" id="basketball" value="Basketball">
		<label for="basketball">Basketball</label><br>

		<input type="checkbox" name="sport" id="volleyball" value="Volleyball">
		<label for="volleyball">Volleyball</label><br>

		<input type="checkbox" name="sport" id="baseball" value="Baseball">
		<label for="baseball">Baseball</label><br>

		<input type="checkbox" name="sport" id="soccer" value="Soccer">
		<label for="soccer">Soccer</label><br>

		<input type="checkbox" name="sport" id="football" value="Football">
		<label for="football">Football</label><br>

		<input type="submit" value="Search">
	</form>

	<div class="players">
<?php foreach($get_players_name as $players_name) { ?>
		<h1><img src="<?= $players_name['image'] ?>" alt="">
		<?= $players_name['first_name'].' '.$players_name['last_name'] ?> </h1>
<?php } ?>
	</div>
	
</body>
</html>