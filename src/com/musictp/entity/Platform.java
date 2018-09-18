package com.musictp.entity;

public class Platform {
private int pid;
private String address;
private String sname1;
private int ticket1;
private String simg1;
private String sname2;
private int ticket2;
private String simg2;
private Audience audience;

public Audience getAudience() {
	return audience;
}
public void setAudience(Audience audience) {
	this.audience = audience;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getSname1() {
	return sname1;
}
public void setSname1(String sname1) {
	this.sname1 = sname1;
}
public int getTicket1() {
	return ticket1;
}
public void setTicket1(int ticket1) {
	this.ticket1 = ticket1;
}
public String getSname2() {
	return sname2;
}
public void setSname2(String sname2) {
	this.sname2 = sname2;
}
public int getTicket2() {
	return ticket2;
}
public void setTicket2(int ticket2) {
	this.ticket2 = ticket2;
}
public String getSimg1() {
	return simg1;
}
public void setSimg1(String simg1) {
	this.simg1 = simg1;
}
public String getSimg2() {
	return simg2;
}
public void setSimg2(String simg2) {
	this.simg2 = simg2;
}

}
