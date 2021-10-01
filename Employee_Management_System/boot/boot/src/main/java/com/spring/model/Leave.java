package com.spring.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "leave")
@Table(name = "leaveCount")
public class Leave {
	  @Id
	  @GeneratedValue
	  private int id;
	  @Column(name="from_date")
	    private Date from;
	    @Column(name="to_date")
	    private Date to;
	    @Column(name="month")
	    private String month;
	   @Column(name="total_leave")
	   private int TotalLeave;
	   @Column(name="leave_status")
	   private  String leaveStatus;
	   @Column(name="fname")
	   private String fname;
	   @Column(name="lname")
	   private String lname;
	   @Column(name="ecode")
	   private String ecode;
	   @Column(name="dept_name")
	   private String deptName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getFrom() {
		return from;
	}
	public void setFrom(Date from) {
		this.from = from;
	}
	public Date getTo() {
		return to;
	}
	public void setTo(Date to) {
		this.to = to;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}

	public int getTotalLeave() {
		return TotalLeave;
	}
	public void setTotalLeave(int totalLeave) {
		TotalLeave = totalLeave;
	}
	public String getLeaveStatus() {
		return leaveStatus;
	}
	public void setLeaveStatus(String leaveStatus) {
		this.leaveStatus = leaveStatus;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEcode() {
		return ecode;
	}
	public void setEcode(String ecode) {
		this.ecode = ecode;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	   
	   

}
