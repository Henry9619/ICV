package com.icia.mov.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MovieDto {
private String movCode;
private String movName;
private String movDirector;
private String movGenre;
private int movGrade;
private Date movOpen;


private MultipartFile movFile;
private String movPoster;

public String getMovCode() {
	return movCode;
}
public void setMovCode(String movCode) {
	this.movCode = movCode;
}
public String getMovName() {
	return movName;
}
public void setMovName(String movName) {
	this.movName = movName;
}
public String getMovDirector() {
	return movDirector;
}
public void setMovDirector(String movDirector) {
	this.movDirector = movDirector;
}
public String getMovGenre() {
	return movGenre;
}
public void setMovGenre(String movGenre) {
	this.movGenre = movGenre;
}
public int getMovGrade() {
	return movGrade;
}
public void setMovGrade(int movGrade) {
	this.movGrade = movGrade;
}
public Date getMovOpen() {
	return movOpen;
}
public void setMovOpen(Date movOpen) {
	this.movOpen = movOpen;
}
public MultipartFile getMovFile() {
	return movFile;
}
public void setMovFile(MultipartFile movFile) {
	this.movFile = movFile;
}
public String getMovPoster() {
	return movPoster;
}
public void setMovPoster(String movPoster) {
	this.movPoster = movPoster;
}
@Override
public String toString() {
	return "MovieDto [movCode=" + movCode + ", movName=" + movName + ", movDirector=" + movDirector + ", movGenre="
			+ movGenre + ", movGrade=" + movGrade + ", movOpen=" + movOpen + ", movFile=" + movFile + ", movPoster="
			+ movPoster + "]";
}









}
