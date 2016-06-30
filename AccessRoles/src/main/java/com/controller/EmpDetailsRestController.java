package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bean.EmpDetails;
import com.services.EmpDetailsService;

@RestController
public class EmpDetailsRestController {
	
	@Autowired
	EmpDetailsService empDetailsService;
	
	@RequestMapping(value="/empdetails", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<EmpDetails> getEmpDetailsRest(){
		
		
		
		//return new ResponseEntity<EmpDetails>(ed, HttpStatus.OK);
		return null;
	}
}
