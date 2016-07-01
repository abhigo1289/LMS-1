<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>Apply Leave Page</title>
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

<body ng-app="leaveApp" >
	<!-- <h1>hello</h1>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	-->
		<h1><center>Leave Management System</center></h1>
		<div class="container" ng-controller="showController" >
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
			<div class="row col-md-4">
			
				<table class="table table-striped table-nonfluid">
					<thead>
						<tr>
							<th>Date</th>
							<th>Day</th>
							<th>Holiday</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in holidays">
							<td>{{x.date}}</td>
							<td>{{x.day}}</td>
							<td>{{x.holiday}}</td>
						</tr>
					</tbody>
				</table>
			</div>	
				<form name="myForm">
					<div class="form-group col-md-8">
					<div class="row">
					<h5><b>Application Type :</b></h5>
						<div class="radio">
	  						<label><input type="radio" name="leaveType">Planned Leave</label>
	  						<label><input type="radio" name="leaveType">Unplanned Leave</label>
	  						<label><input type="radio"  name="leaveType">LWP(Leave Without Pay)</label>
	  						<label><input type="radio"  ng-click="showDD=true" name="leaveType">On-Duty</label>
	  						<span class="dropdown">
	  							  <select  ng-model="ddlReasons" ng-show="showDD" ng-options="r.reason for r in reasons track by r.id">
	  							  <option></option>
								  </select>  
	  						</span><br>
	  						<label><input type="radio" name="leaveType" ng-click="showDD1=true">UL-PL</label>
	  						<span class="dropdown">
	  							<select ng-model="ddlTypeOf" ng-show="showDD1" ng-options="p.type for p in typeOf track by p.id">
	  								<option></option>
	  							</select>
	  						</span>
	  						
		  						<label><input type="radio" name="leaveType">FH 1 2016</label>
		  						<label><input type="radio" ng-click="showdd=true" name="leaveType">Fh 2 2016</label>
		  					<span class="dropdown">
	  							<select ng-model="ddlFloaters" ng-show="showdd" ng-options="f.name for f in floatH track by f.id"></select>
	  							<option></option>
	  						</span>
	  					</div>
	  				</div><br><br>
	  				<div class="row">
	  					<div class="form-group has-feedback">
	  						<label><input type="checkbox">&nbsp;&nbsp;&nbsp;Recursive Half-leaves </label>
	  					</div>
					</div>
					
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3">Start Date : <span style="color:red">*</span></div>
							<div class="col-sm-3">Half day <span><input type="checkbox"></span></div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><input type="text" ></div>
							<div class="dropdown col-sm-3"><select ng-model="ddlHf1" ng-options="hf.name for hf in halfday track by hf.id"></select></div>
						</div>
					</div>
					<br>		
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3">End Date : <span style="color:red">*</span></div>
							<div class="col-sm-3">Half day <span><input type="checkbox"></span></div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><input type="text" ></div>
							<div class="dropdown col-sm-3"><select ng-model="ddlHf1" ng-options="hf.name for hf in halfday track by hf.id"></select></div>
						</div>
					</div>		
					
					<br><br>
					
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><b>Contact No :</b><span style="color:red">*</span></div>
							<div class="col-sm-3"><b>Residence :</b></div>
							<div class="col-sm-3"><b>Others :</b></div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><input type="text"></div>
							<div class="col-sm-3"><input type="text"></div>
							<div class="col-sm-3"><input type="text"></div>
						</div>
					</div>
					
					<br><br>
					
					<div class="row">
						<div class="form-group">
							<div class="col-md-3"><b>Reason :</b><span style="color:red">*</span></div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group">
							<div class="col-md-9"><input type="text" class="form-control"></div>
						</div>
					</div>
				
				<br><br>
					
					<div class="row">
						<button type="submit" class="btn btn-primary">Submit</button>
						<button type="button" class="btn btn-danger">Clear text</button>
					</div>
				</div>
			</form>	
		</div>
		
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
			
			 <a	href="javascript:formSubmit()"> Logout</a>
		
		</sec:authorize>
	</div>
</body>
<!--<script src="/js/app.js"></script>
<script src="/js/controller/controller.js"></script>-->
 <script>
	var app= angular.module('leaveApp',[]);
	app.controller('showController',function($scope){
		
		$scope.holidays=[{date:"01 Jan 2016",day:"Friday",holiday:"New Year"},
		                 {date:"26 Jan 2016",day:"Tuesday",holiday:"Republic day"},
		                 {date:"24 Mar 2016",day:"Thursday",holiday:"Holi"},
		                 {date:"15 Aug 2016",day:"Monday",holiday:"Independence day"},
		                 {date:"15 Sep 2016",day:"Thursday",holiday:"Anant Chaturdashi"},
		                 {date:"11 Oct 2016",day:"Tuesday",holiday:"Dusshera"},
		                 {date:"31 Oct 2016",day:"Monday",holiday:"Diwali"},
		                 {date:"01 Nov 2016",day:"Tuesday",holiday:"Bhaidooj"}];
		$scope.reasons=[{id:1,reason:"Interview"},
		                {id:2,reason:"Onsite(Abroad)"},
		                {id:3,reason:"Visa"},
		                {id:4,reason:"Shift Change"},
		                {id:5,reason:"Training"},
		                {id:6,reason:"Inter Office Visit"},
		                {id:7,reason:"Onsite(India)"}];
		$scope.typeOf=[{id:1,type:"Medical"},
		               {id:2,type:"Personal"}];
		$scope.floatH=[{id:1,name:"15-Jan-2016 - Friday - Makar Sakranti/Pongal"},
		               {id:1,name:"19-Feb-2016 - Friday - Shivaji Jayanti"},
		               {id:1,name:"07-Mar-2016 - Monday - Maha Shivratri"},
		               {id:1,name:"25-Mar-2016 - Friday - Good Friday"},
		               {id:1,name:"08-Apr-2016 - Friday - Gudi Padva"},
		               {id:1,name:"13-Apr-2016 - Wednesday - Baisakhi"},
		               {id:1,name:"14-Apr-2016 - Thursday - Dr.Ambedkar Jayanti,Puthandu"},
		               {id:1,name:"15-Apr-2016 - Friday - Ram Navami,Vishu"},
		               {id:1,name:"19-Apr-2016 - Tuesday - Mahavir Jayanti"},
		               {id:1,name:"06-Jul-2016 - Wednesday - Id-Ul-Fitr(Ramzan)"},
		               {id:1,name:"07-Jul-2016 - Thursday - Id-Ul-Fitr(Ramzan)"},
		               {id:1,name:"25-Aug-2016 - Thursday - Krishna Janmashtami"},
		               {id:1,name:"05-Sep-2016 - Monday - Ganesh Chaturthi"},
		               {id:1,name:"12-Sep-2016 - Monday - Bakri Id"},
		               {id:1,name:"13-Sep-2016 - Tuessday - Onam"},
		               {id:1,name:"10-Oct-2016 - Monday - Durga Puja"},
		               {id:1,name:"12-Oct-2016 - Wednesday - Muharram"},
		               {id:1,name:"28-Oct-2016 - Friday - Dhanteras"},
		               {id:1,name:"14-Nov-2016 - Monday - Guru Nanak Jayanti"},
		               {id:1,name:"12-Dec-2016 - Monday - Id-E-Milad,Datta Jayanti "}];
		$scope.halfday=[{id:1,name:"Ist Half"},{id:2,name:"IInd Half"}];
	});
</script>
</html>