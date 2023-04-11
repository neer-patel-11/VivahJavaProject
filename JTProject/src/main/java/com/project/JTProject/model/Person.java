package com.project.JTProject.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToOne;

import org.hibernate.annotations.*;

@Entity
@Table
public class Person {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	public String firstName;
	public String middleName;
	public String lastName;
	public String gender;
	public String address;
	public String contact;
	public String motherTongue;
	public String religion;
	public String cast;
	public String motherName;
	public String fatherName;
	public LocalDate dob;
	public String emailId;
	public String password;
	
	@OneToOne(cascade = CascadeType.ALL)
	public PersonProffesionalDetails ppd; 
	
	@OneToOne(cascade = CascadeType.ALL)
	public PersonLogin pl;
	
	@Lob
	@Column(columnDefinition = "LONGBLOB")
	public String img;
	
	public PersonLogin getPl() {
		return pl;
	}
	public void setPl(PersonLogin pl) {
		this.pl = pl;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}


	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
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


	public PersonProffesionalDetails getPpd() {
		return ppd;
	}
	public void setPpd(PersonProffesionalDetails ppd) {
		this.ppd = ppd;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getMotherTongue() {
		return motherTongue;
	}
	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}


	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}


	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}


	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}


	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
}
