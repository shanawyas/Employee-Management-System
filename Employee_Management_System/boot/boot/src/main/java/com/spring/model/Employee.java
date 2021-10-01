package com.spring.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "employee")
@Table(name = "employee")
public class Employee { 
     
    @Id
    private int id;
    @Column(name="ecode")
    private String ecode;
    
 

	public String getEcode() {
		return ecode;
	}

	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	@Column(name="fname")
    private String fname;
    @Column(name="lname")
    private String lname;
    @Column(name="dob")
    private String dob;
    @Column(name="gender")
    private String gender;
    @Column(name="address")
    private String address;
    @Column(name="phone")
    private String phone;
    @Column(name="division")
    private String division;
    @Column(name="district")
    private String district;
    @Column(name="nationality")
    private String nationality;
    @Column(name="nid")
    private String nid;
    @Column(name="status")
    private String status;
    @Column(name="religion")
    private String religion;
   
    
    @Column(name="dept_code")
    private String deptCode;
    
    @Column(name="dept_name")
    private String deptName;
    @Column(name="desig_name")
    private String desigName;
    @Column(name="desig_code")
    private String desigCode;
 
	@Column(name="joining")
    private String joining;
    @Column(name="salary")
    private double salary;
	@Column(name = "photo")
	private String photo;
	@Column(name="house")
    private double house;
    @Column(name="madic")
    private double madic;
    @Column(name="food")
    private double food;
    @Column(name="total")
    private double total;
	/*
	 * @Column(name="leave_remain") private int remain;
	 */
    @Column(name="from_date")
    private Date from;
    @Column(name="to_date")
    private Date to;
    @Column(name="month")
    private String month;
   @Column(name="tolal_leave")
   private int leave;
   @Column(name="attend_date")
   private  String attendDate;
   @Column(name="leave_status")
   private  String leaveStatus;
 
   
	public String getLeaveStatus() {
	return leaveStatus;
}

public void setLeaveStatus(String leaveStatus) {
	this.leaveStatus = leaveStatus;
}

	public String getAttendDate() {
	return attendDate;
}

public void setAttendDate(String attendDate) {
	this.attendDate = attendDate;
}


public String getPhoto() {
	return photo;
}

public void setPhoto(String photo) {
	this.photo = photo;
}

	public int getLeave() {
		return leave;
}

	public void setLeave(int leave) {
		this.leave = leave;
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

	/*
	 * public int getRemain() { return remain; }
	 * 
	 * public void setRemain(int remain) { this.remain = remain; }
	 */

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

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJoining() {
		return joining;
	}

	public void setJoining(String joining) {
		this.joining = joining;
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

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
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

		public double getSalary() {
				return salary;
			}

			public void setSalary(double salary) {
				this.salary = salary;
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

	
  
    
}
