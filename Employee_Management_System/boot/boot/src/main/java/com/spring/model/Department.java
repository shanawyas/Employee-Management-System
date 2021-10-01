package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity(name = "department")
@Table(name = "department")
public class Department {
    @Id
    private int id;
    @Column(name="deptcode")
    private String deptcode;
    
    @Column(name="deptname")
    private String deptname;
    
    @Column(name="deptdescrip")
    private String deptdescrip;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDeptcode() {
		return deptcode;
	}

	public void setDeptcode(String deptcode) {
		this.deptcode = deptcode;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public String getDeptdescrip() {
		return deptdescrip;
	}

	public void setDeptdescrip(String deptdescrip) {
		this.deptdescrip = deptdescrip;
	}
}
