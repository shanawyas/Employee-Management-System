package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "salaryStructure")
@Table(name = "salaryStructure")
public class SalaryStructure {

	@Id
    private int id;
	

	@Column(name="house")
    private double house;
    @Column(name="madic")
    private double madic;
    @Column(name="food")
    private double food;
    @Column(name="desig_code")
    private String desigcode;
    
    @Column(name="desig_name")
    private String designame;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getDesigcode() {
		return desigcode;
	}

	public void setDesigcode(String desigcode) {
		this.desigcode = desigcode;
	}

	public String getDesigname() {
		return designame;
	}

	public void setDesigname(String designame) {
		this.designame = designame;
	}
    
	
}
