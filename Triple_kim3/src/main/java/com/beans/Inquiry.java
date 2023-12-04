package com.beans;

public class Inquiry {
	
	private int rownum;
	
	private String iid;
	private String uid;
	private String type;
	private String title;
	private String desc;
	private String date;
	private String status;
	private String delete;
	
	
	public String getIid() {
		return iid;
	}
	public void setIid(String iid) {
		this.iid = iid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDelete() {
		return delete;
	}
	public void setDelete(String delete) {
		this.delete = delete;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	@Override
	public String toString() {
		return "Inquiry [rownum=" + rownum + ", iid=" + iid + ", uid=" + uid + ", type=" + type + ", title=" + title
				+ ", desc=" + desc + ", date=" + date + ", status=" + status + ", delete=" + delete + "]";
	}
	
	
}
