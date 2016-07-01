package com.services;

import java.sql.Date;

import com.bean.EmpDetails;
import com.bean.EmpLeave;


public interface EmpDetailsService 
{
	public EmpDetails getEmpDetails(int empId);
	
	public EmpLeave getApprovedLeave(int empId);
	
	public void addEmployee(EmpDetails newObj);
	
	public void addLeave(EmpLeave leave);
	
	public double calPlanedLeaves(Date start,Date end);

	public void deleteLeaveRequest(int empId,Date start);
}