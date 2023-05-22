<?php
session_start();
$sign_up= $_SESSION['sign_up'];
include('config/database.php');
if(empty($email_address))
{
  header("location:dashboard.php");
}

// 
     
        $cat= !empty($_GET['cat'])?$_GET['cat']:'';
        $subcat = !empty($_GET['subcat'])?$_GET['subcat']:'';
        if($cat=='website-setting' && $subcat=='add-website-menu'){
          
          include('partial/sidebar.php');
        }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Gender, Sex, and Status Dashboard</title>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<h1>Gender, Sex, and Status Dashboard</h1>
	<canvas id="gender-chart"></canvas>
	<canvas id="sex-chart"></canvas>
	<canvas id="status-chart"></canvas>

	<script>
		// Retrieve data from database
		// Gender data
		<?php
			$genderData = mysqli_query($conn, "SELECT gender, COUNT(*) as total FROM users GROUP BY gender");
			$genderLabels = array();
			$genderValues = array();
			while ($row = mysqli_fetch_array($genderData)) {
				array_push($genderLabels, $row['gender']);
				array_push($genderValues, $row['total']);
			}
		?>

		// Sex data
		<?php
			$sexData = mysqli_query($conn, "SELECT sex, COUNT(*) as total FROM users GROUP BY sex");
			$sexLabels = array();
			$sexValues = array();
			while ($row = mysqli_fetch_array($sexData)) {
				array_push($sexLabels, $row['sex']);
				array_push($sexValues, $row['total']);
			}
		?>

		// Status data
		<?php
			$statusData = mysqli_query($conn, "SELECT status, COUNT(*) as total FROM users GROUP BY status");
			$statusLabels = array();
			$statusValues = array();
			while ($row = mysqli_fetch_array($statusData)) {
				array_push($statusLabels, $row['status']);
				array_push($statusValues, $row['total']);
			}
		?>

		// Create gender chart
		var genderCtx = document.getElementById('gender-chart').getContext('2d');
		var genderChart = new Chart(genderCtx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($genderLabels); ?>,
				datasets: [{
					label: 'Gender',
					data: <?php echo json_encode($genderValues); ?>,
					backgroundColor: 'rgba(255, 99, 132, 0.2)',
					borderColor: 'rgba(255, 99, 132, 1)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});

		// Create sex chart
		var sexCtx = document.getElementById('sex-chart').getContext('2d');
		var sexChart = new Chart(sexCtx, {
			type: 'pie',
			data: {
				labels: <?php echo json_encode($sexLabels); ?>,
				datasets: [{
					label: 'Sex',
					data: <?php echo json_encode($sexValues); ?>,
					backgroundColor: [
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)'
					],
					borderColor: [
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 156, 345, 1)',
                    ]
                    }]
                }
           }
        );

