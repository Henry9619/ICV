package com.icia.mov.dto;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentDto {
	private int cNum;
	private String cmNum;
	private String cWriter;
	private String cContents;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private Date cDate;
	
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getCmNum() {
		return cmNum;
	}
	public void setCmNum(String cmNum) {
		this.cmNum = cmNum;
	}
	public String getcWriter() {
		return cWriter;
	}
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	public String getcContents() {
		return cContents;
	}
	public void setcContents(String cContents) {
		this.cContents = cContents;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	@Override
	public String toString() {
		return "CommentDto [cNum=" + cNum + ", cmNum=" + cmNum + ", cWriter=" + cWriter + ", cContents=" + cContents
				+ "]";
	}
	
	
	
}
