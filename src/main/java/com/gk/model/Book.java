package com.gk.model;

public class Book {
	private int bid;
	private String bName;
	private String bAuther;
	private String issueDate;
	private Double bprize;
	private String days;
    private int rollNumber;
	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbAuther() {
		return bAuther;
	}

	public void setbAuther(String bAuther) {
		this.bAuther = bAuther;
	}

	public String getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}

	public Double getBprize() {
		return bprize;
	}

	public void setBprize(Double bprize) {
		this.bprize = bprize;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public int getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(int rollNumber) {
		this.rollNumber = rollNumber;
	}
	
}
