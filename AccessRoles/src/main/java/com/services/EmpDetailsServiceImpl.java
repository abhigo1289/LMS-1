package com.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.EmpDetails;

@Service("empDetailsService")
@Transactional
public class EmpDetailsServiceImpl implements EmpDetailsService
{
 @Override
 	public EmpDetails getEmpDetails(int empId) 
 	{
	 	EmpDetails ed=new EmpDetails();
	 	ed.setEmpId(12);
	 	ed.setBloodGrp("b+");
	 	ed.setEmpname("abhishek");
 		return ed;
 	}	

}
