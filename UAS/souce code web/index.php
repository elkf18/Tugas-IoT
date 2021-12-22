<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="jquery/jquery.min.js"></script>
	<title>Sensor </title>

	<script type="text/javascript">
		$(document).ready(function() {
			setInterval(function() {
				$("#ceksensor").load('ceksensor.php');
			}, 1000);
		});
	</script>
</head>

<body>
	<div class="card text-dark bg-info mb-3  text-center " style="max-width: 18rem;">
		<div class="card-header">Sensor</div>
		<div class="card-body">
			<h1 class="card-text"><span id="ceksensor"></span></h1>
		</div>
	</div>
</body>

</html>