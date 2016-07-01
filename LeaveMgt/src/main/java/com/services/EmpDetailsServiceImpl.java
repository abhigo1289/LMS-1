package com.services;


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
import com.fasterxml.jackson.databind.ObjectWriter.GeneratorSettings;


@Service("empDetailsService")
@Transactional
public class EmpDetailsServiceImpl implements EmpDetailsService
{
	@Autowired
	SessionFactory sf;
	Session s;
	Transaction t;
	
	public EmpDetailsServiceImpl() 
	{	}
	
	
	

@Override
 	public EmpDetails getEmpDetails(int empId) 
 	{
		s=sf.openSession();
		t=s.beginTransaction();
		System.out.println("/***current id code is "+empId );
		Query q=s.createQuery("FROM EmpDetails  where empid=?");
		
		q.setInteger(0, empId);
		List<EmpDetails> e=q.list();
		EmpDetails empdetails=null;
		
		for(EmpDetails emp : e)
		{
			
			empdetails=emp;
		}
	
		
		s.close();
		return empdetails;
 	}	

}