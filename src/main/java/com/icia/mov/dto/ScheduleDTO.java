package com.icia.mov.dto;

import java.sql.Date;

public class ScheduleDTO {
//	SCHALL      NVARCHAR2(10),      --상영관
//	SCTIME      DATE,               --날짜 및 시간
//	SCTHCODE    NVARCHAR2(4),       --영화관 코드(FK)
//	SCMOVCODE   NVARCHAR2(6)        --영화 코드(FK)
//
	
	private String scHall;
	private String scTime;
	private String scthCode;
	private String scmovCode;
	
	private String hmTime;
	private String mdate;
	public String getScHall() {
		return scHall;
	}
	public void setScHall(String scHall) {
		this.scHall = scHall;
	}
	public String getScTime() {
		return scTime;
	}
	public void setScTime(String scTime) {
		this.scTime = scTime;
	}
	public String getScthCode() {
		return scthCode;
	}
	public void setScthCode(String scthCode) {
		this.scthCode = scthCode;
	}
	public String getScmovCode() {
		return scmovCode;
	}
	public void setScmovCode(String scmovCode) {
		this.scmovCode = scmovCode;
	}
	public String getHmTime() {
		return hmTime;
	}
	public void setHmTime(String hmTime) {
		this.hmTime = hmTime;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [scHall=" + scHall + ", scTime=" + scTime + ", scthCode=" + scthCode + ", scmovCode="
				+ scmovCode + ", hmTime=" + hmTime + ", mdate=" + mdate + "]";
	}
	
	
	
}