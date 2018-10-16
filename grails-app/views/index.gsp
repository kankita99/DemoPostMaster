<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<title>
		Post Master!!
	</title>

	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
			   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
	.fieldcontain{
		text-align:center;
		color:blue;
		line-height: 40px;

	}
	h2 {
		text-align:center;
		color:blue;
		font-family:fantasy;
	}
	</style>
</head>
<body>
<div class="container">
	<div class="jumbotron">
		<h2>Welcome to POSTMASTER!</h2>
	</div>
</div>
<div class="container">
	<g:form controller="login" action="signin">
		<label for="username">
				UserName
		</label>
			<g:textField name="username"/>

		<label for="Password">
			Password
		</label>
			<g:passwordField name="password"/>
			<input type="submit" value="SignIn" name="submit" />
	</g:form>
	New Here?
	<g:link url="${createLink(controller:'login',action:'openSignUpForm')}">Sign Up</g:link>
</div>


</body>
</html>
