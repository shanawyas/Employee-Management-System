package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity(name = "designation")
@Table(name = "designation")
public class Designation {
    @Id
    private int id;
    @Column(name="desig_code")
    private String desigcode;
    
    @Column(name="desig_name")
    private String designame;
    
    @Column(name="desig_seq")
    private int desigseq;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public int getDesigseq() {
		return desigseq;
	}

	public void setDesigseq(int desigseq) {
		this.desigseq = desigseq;
	}
}
