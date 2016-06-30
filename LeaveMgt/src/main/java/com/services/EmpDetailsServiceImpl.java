package com.services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
//	 List<EmpDetails> emp = new ArrayList<EmpDetails>();
//		
//		emp = sessionFactory.getCurrentSession().createQuery("from EmpDetails where empId=?").setParameter(0, empId)
//				.list();

	 	
 		return new EmpDetails(1234, null,null,null,null,null, 2.5, 2.5);
 	}	

}