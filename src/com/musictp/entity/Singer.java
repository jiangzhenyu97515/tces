package com.musictp.entity;

import org.springframework.web.multipart.MultipartFile;

public class Singer {
private int id;
private String name;
private int sex;
private String image;
private MultipartFile file;
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}
public MultipartFile getFile() {
	return file;
}
public void setFile(MultipartFile file) {
	this.file = file;
}

}
