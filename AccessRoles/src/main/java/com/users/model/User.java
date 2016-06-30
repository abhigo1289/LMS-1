package com.users.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOGIN")
public class User {

	private String empId;	
	private String password;
	
	private boolean enabled;
	
	private Set<UserRole> userRole = new HashSet<UserRole>(0);

	public User() {
	}

	public User(String empId, String password, boolean enabled) {
		this.empId=empId;
		this.password = password;
		this.enabled = enabled;
	}

	public User(String empId, String password, boolean enabled, Set<UserRole> userRole) {
		this.empId=empId;
		this.password = password;
		this.enabled = enabled;
		this.userRole = userRole;
	}

	@Id
	@Column(name = "EMPID", unique = true, nullable = false, length = 45)
	public String getEmpId() {
		return this.empId;
	}

	public void setEmpId(String empId) {
		this.empId=empId;
	}

	@Column(name = "password", nullable = false, length = 60)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "enabled", nullable = false)
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<UserRole> getUserRole() {
		return this.userRole;
	}

	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}

}
