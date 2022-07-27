package com.icia.mov.dto;

public class RESDTO2 {
	private String rvCode;
	private String rvmId;
	private String rvScHall;
	private String rvScTime;
	private String rvScThCode;
	private String rvMovCode;
	private int rvCount;
	private String movName;
	private String thName;
	public String getRvCode() {
		return rvCode;
	}
	public void setRvCode(String rvCode) {
		this.rvCode = rvCode;
	}
	public String getRvmId() {
		return rvmId;
	}
	public void setRvmId(String rvmId) {
		this.rvmId = rvmId;
	}
	public String getRvScHall() {
		return rvScHall;
	}
	public void setRvScHall(String rvScHall) {
		this.rvScHall = rvScHall;
	}
	public String getRvScTime() {
		return rvScTime;
	}
	public void setRvScTime(String rvScTime) {
		this.rvScTime = rvScTime;
	}
	public String getRvScThCode() {
		return rvScThCode;
	}
	public void setRvScThCode(String rvScThCode) {
		this.rvScThCode = rvScThCode;
	}
	public String getRvMovCode() {
		return rvMovCode;
	}
	public void setRvMovCode(String rvMovCode) {
		this.rvMovCode = rvMovCode;
	}
	public int getRvCount() {
		return rvCount;
	}
	public void setRvCount(int rvCount) {
		this.rvCount = rvCount;
	}
	public String getMovName() {
		return movName;
	}
	public void setMovName(String movName) {
		this.movName = movName;
	}
	public String getThName() {
		return thName;
	}
	public void setThName(String thName) {
		this.thName = thName;
	}
	@Override
	public String toString() {
		return "RESDTO2 [rvCode=" + rvCode + ", rvmId=" + rvmId + ", rvScHall=" + rvScHall + ", rvScTime=" + rvScTime
				+ ", rvScThCode=" + rvScThCode + ", rvMovCode=" + rvMovCode + ", rvCount=" + rvCount + ", movName="
				+ movName + ", thName=" + thName + "]";
	}
	
}
