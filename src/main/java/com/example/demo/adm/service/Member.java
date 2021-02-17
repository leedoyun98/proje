package com.example.demo.adm.service;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Lazy
@NoArgsConstructor
public class Member {

	String email;
	String password;
	String ages;
	String level;
	String city;
	String address;
	int gender;
	String phone;

	public String getEmail() {return email;}

	public void setEmail(String email) {this.email = email;}

	public String getPassword() {return password;}

	public void setPassword(String password) {this.password = password;}

	public String getAges() {return ages;}

	public void setAges(String ages) {this.ages = ages;}

	public String getLevel() {return level;}

	public void setLevel(String level) {this.level = level;}

	public String getCity() {return city;}

	public void setCity(String city) {this.city = city;}

	public String getAddress() {return address;}

	public void setAddress(String address) {this.address = address;}

	public int getGender() {return gender;}

	public void setGender(int gender) {this.gender = gender;}

	public String getPhone() {return phone;}

	public void setPhone(String phone) {this.phone = phone;}
}