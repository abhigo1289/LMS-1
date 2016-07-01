<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Login Page</title>

 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>

.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 400px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body onload='document.loginForm.username.focus();' ng-app="loginApp">
	<div class="container">
	<center><h1>Leave Management System</h1></center>
			<div id="login-box">
				<div class="col-sm-2"></div>
				<center><h3>Login</h3></center>
				<br>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>
				<div class="form-container">
					<form class="form-horizontal" name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
						<div class="row">
							<div class="form-group has-feedback">
								<div class="col-sm-2"></div>							
								<!-- <label class="control-label col-sm-4">Username :</label>-->
								<div class="col-sm-8">
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
									<input class="empid form-control " type="text" name="empid"  placeholder="Employee Code" >
								</div>
							</div>
						</div>
					<div class="row">	
						<div class="form-group has-feedback">
							<div class="col-sm-2"></div>
							<!-- <label class="control-label col-sm-4">Password :</label>-->
							<div class="col-sm-8">
								<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								<input class="emppassword form-control" type='password' name='emppassword' placeholder="Password"/>
							</div>
						</div>
					</div>	
					<div class="col-sm-2"></div>	
					<div class="row">
						<div class="form-group col-xs-8 ">
							<button type="submit" class="btn btn-primary btn-block">Submit</button>
						</div>
					</div>	
					
					<div class="row">
						<div class="form-group col-xs-3">
							<a href="#" ng-click="alert()">Forgot Password</a>
						</div>
					</div>
					
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
			</div>	
		</div>
</body>
<!-- <script src="/js/app.js"></script> -->
<script>
var app = angular.module('loginApp',[]);
	
</script>
</html>