<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
</head>
<style>
#empDetailsBox {
	position:relative;
	bottom:100px;
	right:100px;
	width: 1000px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
table
{
    table-layout: fixed;
    width: 50px;
}
.table-nonfluid {
   width: auto !important;
}
.table.table-borderless td, .table.table-borderless th {
    border: 0 !important;
}
.table.table-borderless td.green{
	width:100px;
	color:#008000;
	
}
.table.table-borderless {
    margin-bottom: 0px;
}


</style>	

<body ng-app="loginApp" >
	<!-- <h1>hello</h1>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	-->
		<h1><center>Leave Management System</center></h1>
		<div class="container" >
		<fieldset><legend>Employee Details</legend>
		<table class="table table-borderless  table-condensed">
			<thead>
				<tr>
					<th>Emp Code </th>
					<th>Employee Name </th>
					<th>Login Name </th>
					<th>Joining Date</th>
				</tr>
			
			</thead>
			<tbody>	
				<tr>
					<td class="green"><b>${pageContext.request.userPrincipal.name}</b> </td>
					<td class="green"><b><!-- Employee name -->Soham Modhe</b> </td>
					<td class="green"><b><!-- Login name -->sohamm</b> </td>
					<td class="green"><b>11/04/2016</b></td>
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th>Available Planned Leaves</th>
					<th>Available Unplanned Leaves</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td class="green"><b>3.5</b></td>
					<td class="green"><b>4</b></td>
					<td></td>
				</tr>
			</tbody>		
		</table>
		</fieldset>		
		<fieldset>
			<button type="button" ng-click="showDown=true" class="btn btn-info">Add New Leave</button>&nbsp;&nbsp;&nbsp;<a href="">Check Approved Leaves</a>
		</fieldset>
		<div ng-show="showDown"><br>
			<fieldset><legend>Present/Absent Application Request Details</legend></fieldset>
		</div>
		
		<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
		
				<a href="javascript:formSubmit()"> Logout</a>
		</c:if>
	</sec:authorize>
	</div>
</body>
<script>
	var app= angular.module('loginApp',[]);
	
</script>
</html>