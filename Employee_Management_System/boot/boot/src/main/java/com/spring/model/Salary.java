package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "salary")
@Table(name = "salary")
public class Salary {
	 	
	
	    @Id
	    @GeneratedValue
	    private int id;
	
	
	 	@Column(name="month_name")
	    private String month;
		@Column(name="year_name")
	    private String year;
		   @Column(name="dept_name")
		    private String deptName;
		    
		    @Column(name="dept_code")
		    private String deptCode;
		    @Column(name="desig_name")
		    private String desigName;
		    @Column(name="desig_code")
		    private String desigCode;
		    
		    @Column(name="emp_name")
		    private String empName;
		    @Column(name="emp_code")
		    private String ecode;
		    @Column(name="fname")
		    private String fname;
		    @Column(name="lname")
		    private String lname;
		    @Column(name="basic")
		    private double salary;

			@Column(name="house")
		    private double house;
		    @Column(name="madic")
		    private double madic;
		    @Column(name="food")
		    private double food;
		    @Column(name="total")
		    private double total;
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			public String getMonth() {
				return month;
			}
			public void setMonth(String month) {
				this.month = month;
			}
			public String getYear() {
				return year;
			}
			public void setYear(String year) {
				this.year = year;
			}
			public String getDeptName() {
				return deptName;
			}
			public void setDeptName(String deptName) {
				this.deptName = deptName;
			}
			public String getDeptCode() {
				return deptCode;
			}
			public void setDeptCode(String deptCode) {
				this.deptCode = deptCode;
			}
			public String getDesigName() {
				return desigName;
			}
			public void setDesigName(String desigName) {
				this.desigName = desigName;
			}
			public String getDesigCode() {
				return desigCode;
			}
			public void setDesigCode(String desigCode) {
				this.desigCode = desigCode;
			}
			public String getEmpName() {
				return empName;
			}
			public void setEmpName(String empName) {
				this.empName = empName;
			}
			public String getEcode() {
				return ecode;
			}
			public void setEcode(String ecode) {
				this.ecode = ecode;
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
			public double getSalary() {
				return salary;
			}
			public void setSalary(double salary) {
				this.salary = salary;
			}
			public double getHouse() {
				return house;
			}
			public void setHouse(double house) {
				this.house = house;
			}
			public double getMadic() {
				return madic;
			}
			public void setMadic(double madic) {
				this.madic = madic;
			}
			public double getFood() {
				return food;
			}
			public void setFood(double food) {
				this.food = food;
			}
			public double getTotal() {
				return total;
			}
			public void setTotal(double total) {
				this.total = total;
			}
			
		    
		    
}
