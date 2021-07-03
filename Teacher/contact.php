<?php
error_reporting(0);
$error = '';
$name = '';
$email = $_POST['email'];
$subject = '';
$message = '';

function clean_text($string)
{
	$string = trim($string);
	$string = stripslashes($string);
	$string = htmlspecialchars($string);
	return $string;
}

if(isset($_POST["submit"]))
{
	if(empty($_POST["name"]))
	{
		$error .= '<p><label class="text-danger">Please Enter your Name</label></p>';
	}
	else
	{
		$name = clean_text($_POST["name"]);
		if(!preg_match("/^[a-zA-Z ]*$/",$name))
		{
			$error .= '<p><label class="text-danger">Only letters and white space allowed</label></p>';
		}
	}
	if(empty($_POST["email"]))
	{
		$error .= '<p><label class="text-danger">Please Enter your Email</label></p>';
	}
	else
	{
		$email = clean_text($_POST["email"]);
		if(!filter_var($email, FILTER_VALIDATE_EMAIL))
		{
			$error .= '<p><label class="text-danger">Invalid email format</label></p>';
		}
	}
	if(empty($_POST["subject"]))
	{
		$error .= '<p><label class="text-danger">Subject is required</label></p>';
	}
	else
	{
		$subject = clean_text($_POST["subject"]);
	}
	if(empty($_POST["message"]))
	{
		$error .= '<p><label class="text-danger">Message is required</label></p>';
	}
	else
	{
		$message = clean_text($_POST["message"]);
	}
	if($error == '')
	{
			require 'mailer/class.phpmailer.php';
			require 'mailer/class.smtp.php';
		$mail = new PHPMailer(true);
		$mail->IsSMTP(); 
		$mail->SMTPDebug  = 0;                     
		$mail->SMTPAuth   = true;                  
		$mail->SMTPSecure = "tls";                 
		$mail->Host       = "smtp.gmail.com";      
		$mail->Port       = 587;             
		$mail->AddAddress($email);
		$mail->Username='mazharulalam.rit115@gmail.com';  
		$mail->Password='1122mithu';            
		$mail->SetFrom('mazharulalam.rit115@gmail.com','Mithu-IT');
		$mail->AddReplyTo($email,'Mithu-IT');
		$mail->WordWrap = 50;
		$mail->IsHTML(true);
		$mail->Subject = $_POST["subject"];				//Sets the Subject of the message
		$mail->Body = $_POST["message"];	
		$mail->Send();;

									//Sets message type to HTML				
					//An HTML or plain text message body
		if($mail->Send())								//Send an Email. Return true on success or false on error
		{
			$error = '<label class="text-success">Thank you for contacting us</label>';
			header("Location: login.php");
		}
		else
		{
			$error = '<label class="text-danger">There is an Error</label>';
		}
		$name = '';
		$email = '';
		$subject = '';
		$message = '';
	}
}

?>

<!DOCTYPE html>
<html>
	<head>
		<title>Send an Email on Form Submission</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<br />
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="margin:0 auto; float:none;">
					<h3 align="center">Send Email</h3>
					<br />

					<?php echo $error; ?>
					
					<form method="post">
						<div class="form-group">
							<label>Enter Name</label>
							<input type="text" name="name" placeholder="Enter Name" class="form-control" value="<?php echo $name; ?>" />
						</div>
						<div class="form-group">
							<label>Enter Email</label>
							<input type="text" name="email" class="form-control" placeholder="Enter Email" value="<?php echo $email; ?>" />
						</div>
						<div class="form-group">
							<label>Enter Subject</label>
							<input type="text" name="subject" class="form-control" placeholder="Enter Subject" value="<?php echo $subject; ?>" />
						</div>
						<div class="form-group">
							<label>Enter Message</label>
							<textarea name="message" class="form-control" placeholder="Enter Message"><?php echo $message; ?></textarea>
						</div>
						<div class="form-group" align="center">
							<input type="submit" name="submit" value="Submit" class="btn btn-info" />
						
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>






