/* this class contains the leave application data for an employee */

package com.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@IdClass(CompositePrimaryKey.class)
@Table(name="EMPLEAVE")
public class EmpLeave 
{
	public EmpLeave() 
	{
	
	}
	
	@Id
	@Column(name="EMPID")
	private int empId;
	
	@Id
	@Column(name="STARTDATE")
	private Date startDate;
	
	@Column(name="TYPEOFLEAVE")
	private String typeOfLeave;
	
	@Column(name="ENDDATE")
	private Date endDate;
	
	@Column(name="FIRSTHALF")
	private int firstHalf;
	
	@Column(name="SECONDHALF")
	private int secondHalf;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="REASON")
	private String reason;	
	
	@Column(name="phone")
	private String phone;
	
	
	

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTypeOfLeave() {
		return typeOfLeave;
	}

	public void setTypeOfLeave(String typeOfLeave) {
		this.typeOfLeave = typeOfLeave;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getFirstHalf() {
		return firstHalf;
	}

	public void setFirstHalf(int firstHalf) {
		this.firstHalf = firstHalf;
	}

	public int getSecondHalf() {
		return secondHalf;
	}

	public void setSecondHalf(int secondHalf) {
		this.secondHalf = secondHalf;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
}
