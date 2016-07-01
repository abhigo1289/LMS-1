package com.services;

import java.sql.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.EmpDetails;
import com.bean.EmpLeave;
import com.bean.EmpLogin;
import com.bean.User_Roles;
import com.fasterxml.jackson.databind.ObjectWriter.GeneratorSettings;

@Service("empDetailsService")
@Transactional
public class EmpDetailsServiceImpl implements EmpDetailsService {

	@Autowired
	SessionFactory sf;
	Session s;
	Transaction t;

	public EmpDetailsServiceImpl() {
	}

	@Override
	public EmpDetails getEmpDetails(int empId) {
		s = sf.openSession();
		t = s.beginTransaction();

		System.out.println("Current id code is " + empId);
		Query q = s.createQuery("FROM EmpDetails  where empid=?");

		q.setInteger(0, empId);

		List<EmpDetails> e = q.list();
		EmpDetails empdetails = null;

		for (EmpDetails emp : e) {

			empdetails = emp;
		}

		s.close();
		return empdetails;
	}

	@Override
	public EmpLeave getApprovedLeave(int empId) 
	{
		s = sf.openSession();
		t = s.beginTransaction();		
		System.out.println("Current id code is " + empId);
		Query q = s.createQuery("FROM EmpLeave  where empid=?");
		q.setInteger(0, empId);
		List<EmpLeave> e = q.list();
		EmpLeave empLeave = null;
		for (EmpLeave emp : e) {
			empLeave = emp;
		}
		t.commit();
		s.close();	
		return empLeave;
	}

	@Override
	public void addEmployee(EmpDetails newObj) 
	{
		s = sf.openSession();
		t = s.beginTransaction();
		
		EmpLogin elogin=new EmpLogin();
		elogin.setEmpId(newObj.getEmpId());
		elogin.setPassword("demo");
		elogin.setEnabled(true);		
		s.save(elogin);
		
		User_Roles roles = new User_Roles();
		roles.setEmpId(newObj.getEmpId());
		roles.setRole("ROLE_USER");
		s.save(roles);   //here it may give prob just cz of role_id which is auto increment in database
		
		
		System.out.println("adding new employee with empid " +newObj.getEmpId());		
		
		s.save(newObj);			
		System.out.println("employee successfully addedd");
		t.commit();
		s.close();	
	}
	
	@Override    // adding a leave for employee in database by checking his type of leave
 	public void addLeave(EmpLeave leave)
	{
		
		
	}
	
	@Override
	public double calPlanedLeaves(Date start, Date end) 
	{
		//bachhan's code here
	
		return 0;
	}
	
	@Override
	public void deleteLeaveRequest(int empId,Date start) 
	{
		s = sf.openSession();
		t = s.beginTransaction();
		
		EmpLeave el=new EmpLeave();
		el.setEmpId(empId);
		el.setStartDate(start);
		
		el.setEmpId(empId);
		
		
		
		
		
		t.commit();
	}
	
	
	
}