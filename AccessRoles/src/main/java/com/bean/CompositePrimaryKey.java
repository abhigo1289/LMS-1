// we are taking composite primary key in empleave class so for that we have to make composite primary key class and have to implement the 
// hashcode and equals methods and at list , have to link this class to the empleave class

package com.bean;

import java.io.Serializable;
import java.sql.Date;

public class CompositePrimaryKey implements Serializable
{
	private int empid;
	private Date startDate;
	
	public CompositePrimaryKey(int empid,Date startDate) 
	{
		this.empid=empid;
		this.startDate=startDate;	
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
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
		result = prime * result + empid;
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
		
		if (empid != other.empid)
			return false;
		
		return true;
	}
 
	

}
