/* this class contains the basic information of an employee */

package com.bean;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EMPDETAILS")
public class EmpDetails 
{
	
	@Id
	@Column(name="EMPMAIL")
	String empMail;
	
	@Column(name="EMPNAME")
	String empname;
	
	@Column(name="EMPID")
	int empId;
	
	public int getEmpId() {
		return empId;
	}

	public void setEmpId( int empId) {
		this.empId = empId;
	}

	@Column(name="DATEOFJOINING")
	Date dateOfJoining;
	
	@Column(name="BLOODGRP")
	String bloodGrp;
	
	@Column(name="GENDER")
	String gender;
	
	@Column(name="PLANNEDLEAVES")
	double plannedLeaves;
	
	@Column(name="UNPLANNEDPLANES")
	double unPlannedLeaves;	
	
	public EmpDetails() 
	{
	
	}

	public String getEmpMail() {
		return empMail;
	}

	public void setEmpMail(String empMail) {
		this.empMail = empMail;
	}

	public String getEmpname() {
		return empname;
	}

	public void setEmpname(String empname) {
		this.empname = empname;
	}

	public Date getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getBloodGrp() {
		return bloodGrp;
	}

	public void setBloodGrp(String bloodGrp) {
		this.bloodGrp = bloodGrp;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getPlannedLeaves() {
		return plannedLeaves;
	}

	public void setPlannedLeaves(double plannedLeaves) {
		this.plannedLeaves = plannedLeaves;
	}

	public double getUnPlannedLeaves() {
		return unPlannedLeaves;
	}

	public void setUnPlannedLeaves(double unPlannedLeaves) {
		this.unPlannedLeaves = unPlannedLeaves;
	}
	
	
	
}
