package com.services;

import com.bean.EmpDetails;
import com.bean.EmpLeave;


public interface EmpDetailsService 
{
	public EmpDetails getEmpDetails(int empId);
	
	public EmpLeave getApprovedLeave(int empId);

}