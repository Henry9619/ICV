package com.icia.mov.dto;

import java.sql.Date;

public class SCHEDTO {
		private String scHall;
		private Date scDate;
		private String scTime;
		private String scThCode;
		private int scMovCode;
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
		@Override
		public String toString() {
			return "SCHEDTO [scHall=" + scHall + ", scDate=" + scDate + ", scTime=" + scTime + ", scThCode=" + scThCode
					+ ", scMovCode=" + scMovCode + "]";
		}
		
		
}
	