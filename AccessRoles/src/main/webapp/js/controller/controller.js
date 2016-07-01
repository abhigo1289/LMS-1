/**
 * 
 */
leaveApp.controller('showController',function($scope){
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
		               {id:1,name:"05-Sep-2016 -Monday - Ganesh Chaturthi"},
		               {id:1,name:"12-Sep-2016 - Monday - Bakri Id"},
		               {id:1,name:"13-Sep-2016 - Tuessday - Onam"},
		               {id:1,name:"10-Oct-2016 - Monday - Durga Puja"},
		               {id:1,name:"12-Oct-2016 - Wednesday - Muharram"},
		               {id:1,name:"28-Oct-2016 - Friday - Dhanteras"},
		               {id:1,name:"14-Nov-2016 - Monday - Guru Nanak Jayanti"},
		               {id:1,name:"12-Dec-2016 - Monday - Id-E-Milad,Datta Jayanti "}];
		$scope.halfday=[{id:1,name:"Ist Half"},{id:2,name:"IInd Half"}];
	});