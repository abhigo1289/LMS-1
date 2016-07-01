// we are taking composite primary key in empleave class so for that we have to make composite primary key class and have to implement the 
// hashcode and equals methods and at list , have to link this class to the empleave class

package com.bean;

import java.io.Serializable;
import java.sql.Date;

public class CompositePrimaryKey implements Serializable
{
	private int empId;
	private Date startDate;
	
	public CompositePrimaryKey(){}
	
	public CompositePrimaryKey(int empId,Date startDate) 
	{
		this.empId=empId;
		this.startDate=startDate;	
	}

	public int getEmpid() {
		return empId;
	}

	public void setEmpid(int empId) {
		this.empId = empId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((startDate == null) ? 0 : startDate.hashCode());
		result = prime * result + empId;
		return result;
	}
 
	@Override
	public boolean equals(Object obj)
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		
		CompositePrimaryKey other = (CompositePrimaryKey) obj;
		if (startDate == null) 
		{
				if (other.startDate != null)
				return false;
				
		} 
		else if (!startDate.equals(other.startDate))
			return false;
		
		if (empId != other.empId)
			return false;
		
		return true;
	}
 
	

}
