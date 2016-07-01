<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<title>Apply Leave Page</title>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>  
   

  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script>

</script>
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
	<div class="panel-group">
		<div class="panel panel-info">
		<div class="panel-heading"><h1><center>Leave Management System</center></h1></div>
		
		<br><br>
		<div class="panel-body" >
		<div class="container" ng-controller="applyController" >
	
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
		
		
				
		<fieldset><br><div  >
				<button type="button" ng-click="toggleApplyLeave()" class="btn btn-info">Add New Leave</button>
				<button type="button" ng-click="toggleAddEmp()" class="btn btn-info">Add New Employee</button>
				<button type="button" ng-click="toggleApproveLeave()" class="btn btn-info">Approve Leaves Of Employees</button>
				&nbsp;&nbsp;&nbsp;<a ng-href="#" ng-click="toggle=true">Check Approved Leaves</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a ng-href="#"  data-target="#myModal" data-toggle="modal">Change Password</a>
	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog">
    
      <!-- Modal content-->
	      	<div class="modal-content">
	        	<div class="modal-header">
	        		<h4 class="modal-title"><center>Change Password</center></h4>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" placeholder="New Password"><br>
					<input type="text" class="form-control" placeholder="Confirm Password"><br>
					<button type="submit"  class="btn btn-primary form-control">Submit</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog">
    
      <!-- Modal content-->
	      	<div class="modal-content">
	        	<div class="modal-header">
	        		<h4 class="modal-title"><center>Change Password</center></h4>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" placeholder="New Password"><br>
					<input type="text" class="form-control" placeholder="Confirm Password"><br>
					<button type="submit"  class="btn btn-primary form-control">Submit</button>
				</div>
			</div>
		</div>
	</div>
				
			</div>
			<div ng-show="toggle">sdfsddfas</div>
		</fieldset>
		
		
		<div class="panel-group" ng-show="applyLeave"><br>
		<div class="panel panel-success">
			<div class="panel-heading"><h3>Present/Absent Application Request Details</h3></div>
				<div class="panel-body"><form name="myForm">
					<div class="form-group col-md-8">
					<div class="row">
					<h5><b>Application Type :</b></h5>
						
						<table class="table table-nonfluid table-borderless">
							<tbody>
								<tr >
									<td>
										<input type="radio" name="leaveType">&nbsp;&nbsp;Planned Leave
									</td>
									<td>
										<input type="radio" name="leaveType">&nbsp;&nbsp; Unplanned Leave
									</td>
									<td>
										<input type="radio"  name="leaveType">&nbsp;&nbsp; LWP(Leave Without Pay)	
									</td>
								</tr>
								<tr >	
									<td>
										<input type="radio"  ng-click="showDD=true" name="leaveType">&nbsp;&nbsp;On-Duty	
			  							<span class="dropdown">
				  							  <select  ng-model="ddlReasons" ng-show="showDD" ng-options="r.reason for r in reasons track by r.id">
				  							  <option></option>
											  </select>  
			  							</span><br>
									</td>
		  							<td>
		  								<input type="radio" name="leaveType" ng-click="showDD1=true">&nbsp;&nbsp;UL-PL
							  			<span class="dropdown">
				  							<select ng-model="ddlTypeOf" ng-show="showDD1" ng-options="p.type for p in typeOf track by p.id">
				  								<option></option>
				  							</select>
		  								</span>
							  		</td>
		  						</tr>
		  						<tr>	
		  							<td>
		  								<input type="radio" name="leaveType">&nbsp;&nbsp;FH 1 2016
		  							</td>
		  							<td>
		  								<input type="radio" ng-click="showdd=true" name="leaveType">&nbsp;&nbsp;Fh 2 2016
			  						</td>
			  						<td>	
			  							<span class="dropdown">
				  							<select ng-model="ddlFloaters"  ng-show="showdd" ng-options="f.name for f in floatH track by f.id"></select>
				  							<option></option>
				  						</span>
		  							</td>
		  						</tr>				  						
		  					</tbody>	
		  				</table>	
		  				
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
						
							<div class="col-sm-3 input-group-date" ><input type="text" class="form-control" id="sdate"></div>
							<div class="dropdown col-sm-3"><select ng-model="ddlHf1" class="form-control" ng-options="hf.name for hf in halfday track by hf.id"></select></div>
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
							<div class="col-sm-3"><input type="text" class="form-control" id="edate"></div>
							<div class="dropdown col-sm-3"><select ng-model="ddlHf2" class="form-control" ng-options="hf1.name for hf1 in halfday1 track by hf1.id"></select></div>
						</div>
					</div>		
					
					<br><br>
					
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><b>Contact No :</b><span style="color:red">*</span></div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group">
							<div class="col-sm-3"><input ng-pattern="/^[0-9]{1,10}$/" type="text" class="form-control"></div>
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
						<button type="reset" class="btn btn-danger">Clear text</button>
					</div>
				</div>
			</form>	
			
		
		<div class="row col-md-4">
			<br>
				<table  class="table table-striped table-nonfluid table-bordered info">
					<thead>
						<tr>
							<th >Date</th>
							<th >Day</th>
							<th >Holiday</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="x in holidays">
							<td  >{{x.date}}</td>
							<td >{{x.day}}</td>
							<td >{{x.holiday}}</td>
						</tr>
					</tbody>
				</table>
							
		</div>	
	</div></div></div><br>
	<div class="panel-group " ng-show="addEmp" >
	<div class="panel panel-danger">
	
	
	<div class="panel-heading"><h3>Add Information About Employee</h3></div>
		<div class="panel-body"><div class="form-container col-md-8 " ng-controller="myCtrl">
	
			<form name="myForm" ng-submit="reset()" method="post"  ng-href="http://localhost:8080/AccessRoles/welcome/{{name}}">
				<div class="row"  >
					<div class="form-group">
						<input placeholder="Full Name" type="text"  ng-model="name" ng-minlength=1 ng-maxlength=30 class="form-control" required/>	
					</div>
				</div>
			
				<div class="row">
					<div class="form-group">
						<input placeholder="Email Address" ng-pattern="/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/" type="text" class="form-control" ng-model="email" ng-minlength=1 ng-maxlength=30  required/>	
					</div>
				</div>
				
				<div class="row">
					<div class="form-group">
						<input placeholder="Date Of Joining" type="text" id="doj" class="form-control" ng-model="doj" ng-minlength=1 ng-maxlength=12  required/>	
					</div>
				</div>

				<div class="row">
					<div class="form-group">
						<input placeholder="Blood Group" type="text" class="form-control" ng-model="bg" ng-minlength=1 ng-maxlength=3  required/>	
					</div>
				</div>


				<div class="row">
					<div class="form-group">
						<div class="radio">Gender : 
							<label ><input type="radio"  value="Male">Male</label>
							<label ><input type="radio"  value="Female">Female</label>
						</div>		
					</div>
				</div>
				
				
				
				<div class="row">
					<div class="form-group">
						<input placeholder="Planned Leaves" type="text" class="form-control" ng-model="pl" ng-minlength=1 ng-maxlength=12  required/>	
					</div>
				</div>
				
				<div class="row">
					<div class="form-group">
						<input placeholder="Unplanned Leaves" type="text" class="form-control" ng-model="upl" ng-minlength=1 ng-maxlength=12  required/>	
					</div>
				</div>
				
				<div class="row">
					<div class="form-group">
						<button type="submit" class="btn btn-primary"  value="Submit">Submit</button>
						<button type="reset" class="btn btn-danger">Clear text</button>	
					</div>
				</div>
				
			</form></div>
		</div>	
	</div>	</div>
	<div ng-show="approveLeave">asdasda</div>
		<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}"  method="post" id="logoutForm">
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
	</div>
	</div></div>
</body>

<!--<script src="/js/app.js"></script>
<script src="/js/controller/controller.js"></script>-->
 <script>
 $(function(){
		$("#sdate").datepicker();
	});
 $(function(){
	 $("#edate").datepicker();
 });
 $(function(){
	 $("#doj").datepicker();
 });

	var app= angular.module('leaveApp',[]);
	
	app.controller('myCtrl',function($scope){
		$scope.showme=false;
		$scope.hello=true;
		$scope.reset = function(){
		$scope.showme=true;
		$scope.hello=false;
		};
	});
	
	app.controller('applyController',function($scope){
		
		$scope.applyLeave=false;
		$scope.approveLeave=false;
		$scope.addEmp=false;
		
		$scope.toggleApplyLeave=function(){
			$scope.applyLeave=!$scope.applyLeave;
			$scope.approveLeave=false;
			$scope.addEmp=false;
		};
		$scope.toggleApproveLeave=function(){
			$scope.applyLeave=false;
			$scope.approveLeave=!$scope.aprroveLeave;
			$scope.addEmp=false;
			
		};
		$scope.toggleAddEmp=function(){
			$scope.applyLeave=false;
			$scope.approveLeave=false;
			$scope.addEmp=!$scope.addEmp;
			
		};
		
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
		$scope.halfday1=[{id:1,name:"Ist Half"},{id:2,name:"IInd Half"}];
		
		
		
		
		
	});
	
</script>
</html>