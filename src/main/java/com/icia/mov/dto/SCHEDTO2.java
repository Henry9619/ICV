package com.icia.mov.dto;

import java.sql.Date;

public class SCHEDTO2 {
		private String scHall;
		private Date scDate;
		private String scTime;
		private String scThCode;
		private int scMovCode;
		private String thName;
		private String movName;
		public String getScHall() {
			return scHall;
		}
		public void setScHall(String scHall) {
			this.scHall = scHall;
		}
		public Date getScDate() {
			return scDate;
		}
		public void setScDate(Date scDate) {
			this.scDate = scDate;
		}
		public String getScTime() {
			return scTime;
		}
		public void setScTime(String scTime) {
			this.scTime = scTime;
		}
		public String getScThCode() {
			return scThCode;
		}
		public void setScThCode(String scThCode) {
			this.scThCode = scThCode;
		}
		public int getScMovCode() {
			return scMovCode;
		}
		public void setScMovCode(int scMovCode) {
			this.scMovCode = scMovCode;
		}
		public String getThName() {
			return thName;
		}
		public void setThName(String thName) {
			this.thName = thName;
		}
		public String getMovName() {
			return movName;
		}
		public void setMovName(String movName) {
			this.movName = movName;
		}
		@Override
		public String toString() {
			return "SCHEDTO2 [scHall=" + scHall + ", scDate=" + scDate + ", scTime=" + scTime + ", scThCode=" + scThCode
					+ ", scMovCode=" + scMovCode + ", thName=" + thName + ", movName=" + movName + ", getScHall()="
					+ getScHall() + ", getScDate()=" + getScDate() + ", getScTime()=" + getScTime() + ", getScThCode()="
					+ getScThCode() + ", getScMovCode()=" + getScMovCode() + ", getThName()=" + getThName()
					+ ", getMovName()=" + getMovName() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
					+ ", toString()=" + super.toString() + "]";
		}
		
		
		
		
}
	