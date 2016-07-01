<%@page import="javax.sound.sampled.ReverbType"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
	<title>Apply Leave Page</title>
	
	<link rel="stylesheet"
		href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	
	<link href="<c:url value="/static/css/hello.css" />" rel="stylesheet">
	
	<!-- Latest compiled JavaScript -->
	<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>



<body ng-app="lmsApp">
	<!-- <h1>hello</h1>

	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	-->
	<h1>
		from session
		<script>
			var id = ${empId}; //${empId} is returned from spring framework
		</script>
	</h1>
	<h1>
		<center>Leave Management System</center>
	</h1>
	<div class="container" ng-controller="empCtrl">
		<fieldset>
			<legend>Employee Details</legend>
			<table class="table table-borderless  table-condensed">
				<thead>
					<tr>
						<th>Emp Code</th>
						<th>Employee Name</th>
						<th>Email</th>
						<th>Joining Date</th>
					</tr>

				</thead>
				<tbody>
					<tr>
						<td class="green" ng-bind='empDetailsId'></td>
						<td class="green" ng-bind='emp.empname'></td>
						<td class="green" ng-bind='emp.empMail'></td>
						<td class="green" ng-bind='emp.dateOfJoining'></td>
					</tr>
					<tr>
						<th>Gender</th>
						<th>Blood Group</th>
						<th>Available Planned Leaves</th>
						<th>Available Unplanned Leaves</th>
					</tr>
					<tr>
						<td class="green" ng-bind='emp.gender'></td>
						<td class="green" ng-bind='emp.bloodGrp'></td>
						<td class="green" ng-bind='emp.plannedLeaves'></td>
						<td class="green" ng-bind='emp.unPlannedLeaves'></td>
					</tr>
				</tbody>
			</table>
			{{errorMessage}}<br>{{data}}
		</fieldset>
		<fieldset>
			<button type="button" ng-click="showDown=true" class="btn btn-info">Add
				New Leave</button>
			&nbsp;&nbsp;&nbsp;<a href="approved_leaves.html">Check Approved Leaves</a>
		</fieldset>
	</div>

	<div ng-view></div>
	
	
<!-- Spring Security part -->
		<sec:authorize access="hasRole('ROLE_USER')">
			<!-- For login user -->
			<c:url value="/logout" var="logoutUrl" />
			<form action="${logoutUrl}" method="post" id="logoutForm">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<script>
				function formSubmit() {
					document.getElementById("logoutForm").submit();
				}
			</script>

			<a href="javascript:formSubmit()"> Logout</a>

		</sec:authorize>
	
<!-- SCRIPTS -->
	<!-- <script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>  -->
	<script src="https://code.angularjs.org/1.5.6/angular.min.js"></script>
  	<script src="https://code.angularjs.org/1.5.6/angular-route.js"></script>

	<script src="<c:url value="/static/js/app.js" />"></script>
	<script src="<c:url value="/static/js/controller/empCtrl.js" />"></script>
	
	
</body>


<!--<script src="/js/app.js"></script>
<script src="/js/controller/controller.js"></script>-->


</html>