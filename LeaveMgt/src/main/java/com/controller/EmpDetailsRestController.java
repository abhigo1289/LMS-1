package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bean.EmpDetails;
import com.bean.EmpLeave;
import com.services.EmpDetailsService;

@RestController
public class EmpDetailsRestController {
	
	@Autowired
	EmpDetailsService empDetailsService;
	
//	GET - EmpDetails with empId
//	Gets employee details by id
	@RequestMapping(value="/emp/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<EmpDetails> getEmpDetailsRest(@PathVariable("id")int empId){
		System.out.println("Retriving EmpDetails with id " + empId);
		EmpDetails emp = empDetailsService.getEmpDetails(empId);
		
		if(emp == null){
			System.out.println("EmpDetails Not Found");
			return new ResponseEntity<EmpDetails>(emp, HttpStatus.NOT_FOUND);
		}
		
		System.out.println("EmpDetails is Retrived");
		return new ResponseEntity<EmpDetails>(emp, HttpStatus.OK);
	}
	
//	GET - EmpLeave with empId
//	Gets employee Leaves details by id
	@RequestMapping(value="/empleave/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<EmpLeave> getEmpLeavesRest(@PathVariable("id")int empId){
		System.out.println("Retriving Employee leaves with id " + empId);
		EmpLeave emp = empDetailsService.getApprovedLeave(empId);
		
		if(emp == null){
			System.out.println("Employee leaves Not Found");
			return new ResponseEntity<EmpLeave>(emp, HttpStatus.NOT_FOUND);
		}
		
		System.out.println("Employee leaves is Retrived");
		return new ResponseEntity<EmpLeave>(emp, HttpStatus.OK);
	}
}