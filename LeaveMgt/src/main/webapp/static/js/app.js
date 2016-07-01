(function(){
	'use strict';
	
	angular
		.module('lmsApp',['ngRoute'])
		.config(['$routeProvider', function($routeProvider){
			
			$routeProvider
				.when('/approvedleave',{
					templateUrl: 'This is view',
			        
				});
		}]);
		
		
			
	
}())