<!---------------- Session starts form here ----------------------->
<?php  
	session_start();
	if (!$_SESSION["LoginAdmin"])
	{
		header('location:../login/login.php');
	}
		require_once "../connection/connection.php";
	?>
<!---------------- Session Ends form here ------------------------>

<?php
	$message = "";
	$account = "";
if (isset($_POST['submit'])) {
	$account = $_POST['account'];
	$user_id = $_POST['user_id'];
	$que="update login set account='$account' where user_id = '$user_id'";
	$run=mysqli_query($con,$que);
	if ($run) {
		$message =  $account == "Activate" ? "Account Activated Successfully" : "Account Deactivated Successfully";
	}	
	else{
		$message = "Account Not Activated  Successfully";
	}
}
?>

<!doctype html>
<html lang="en">
	<head>
		<title>Admin - Manage Accounts</title>
	</head>
	<body>
		<?php include('../common/common-header.php') ?>
		<?php include('../common/admin-sidebar.php') ?>  

		<main role="main" class="col-xl-10 col-lg-9 col-md-8 ml-sm-auto px-md-4 mb-2 w-100">
			<div class="sub-main">
				<div class="bar-margin text-center d-flex flex-wrap flex-md-nowrap pt-3 pb-2 mb-3 text-white admin-dashboard pl-3">
					<h4>User Account Management System </h4>
				</div>
				<div class="row">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<?php
									if(($account == "Activate" or $account == "Deactivate") and $message==true)
										$bg_color = "alert-success";
									else if($message==true)
										$bg_color = "alert-danger";	
								?>
								<h5 class="py-2 pl-3 <?php echo $bg_color; ?>">
									
									<?php echo $message ?>
								</h5>
							</div>
							<div class="col-md-12">
								<form action="manage-accounts.php" method="post">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Enter User ID</label>
												<input type="text" name="user_id" class="form-control" required placeholder="Enter ID">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Enter Account Status:</label>
												<select name="account" class="form-control">
													<option>Select Account Status</option>
													<option value="Activate">Activate</option>
													<option value="Deactivate">Deactivate</option>

												</select>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<input type="submit" name="submit" value="Change" class="btn btn-primary px-5">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="row">
								<div class="col-md-12">
									<table class="w-100 table-elements table-three-tr" cellpadding="3">
										<tr class="table-tr-head table-three text-white">
											<td colspan="9" class=" text-center text-white"><h4>All Users</h4></td>
										</tr>
										<tr class="table-tr-head">
											<th>User Id</th>
											<th>User Role</th>
											<th>User Status</th>
											
										</tr>
										<?php  
											$query="SELECT * FROM login ORDER BY Role ASC";
											$run=mysqli_query($con,$query);
											while ($row=mysqli_fetch_array($run)) { ?>
												<tr>
													<td><?php echo $row['user_id'] ?></td>
													<td><?php echo $row['Role'] ?></td>
													<td><?php echo $row["account"] ?></td>
												
												</tr>		
											<?php
											}
										?>
									</table>
								</div>
							</div>	
					</div>
								
				</div>
			</div>
		</main>
	</body>
</html>
