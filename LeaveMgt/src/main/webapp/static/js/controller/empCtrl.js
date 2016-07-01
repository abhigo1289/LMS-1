(function(){
	'use strict';
	
	angular
		.module('lmsApp')
		.controller('empCtrl',['$scope', '$http', empCtrl]);
	
	function empCtrl(scope, http){
		var empDetails
		var baseurl = 'emp/'+id;

		scope.empDetailsId = id;
		
		http.get(baseurl)
			.then(
				function(response){
					empDetails = response.data;
					console.log(empDetails)
					scope.emp = empDetails;
				},
				function(error){
					scope.errorMessage = error.statusText;
				}
			);
		
		
			
	}
}())