package com.icia.mov.dto;

import org.springframework.web.multipart.MultipartFile;

public class THDTO {
	
	private String thCode;
	
	private String thName;
	private String thAddr;
	private String thLat;
	private String thLong;
	private MultipartFile thPic;
	private String thPicName;
	public String getThCode() {
		return thCode;
	}
	public void setThCode(String thCode) {
		this.thCode = thCode;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	public String getThAddr() {
		return thAddr;
	}
	public void setThAddr(String thAddr) {
		this.thAddr = thAddr;
	}
	public String getThLat() {
		return thLat;
	}
	public void setThLat(String thLat) {
		this.thLat = thLat;
	}
	public String getThLong() {
		return thLong;
	}
	public void setThLong(String thLong) {
		this.thLong = thLong;
	}
	public MultipartFile getThPic() {
		return thPic;
	}
	public void setThPic(MultipartFile thPic) {
		this.thPic = thPic;
	}
	public String getThPicName() {
		return thPicName;
	}
	public void setThPicName(String thPicName) {
		this.thPicName = thPicName;
	}
	@Override
	public String toString() {
		return "THDTO [thCode=" + thCode + ", thName=" + thName + ", thAddr=" + thAddr + ", thLat=" + thLat
				+ ", thLong=" + thLong + ", thPic=" + thPic + ", thPicName=" + thPicName + "]";
	}

	


	
	
}
