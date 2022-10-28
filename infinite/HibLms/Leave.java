package com.infinite.HibLms;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="leave")
public class Leave {
	@Id
	@Column(name="Leave_ID")
	private int leaveId;

	@Id
	@Column(name="EMP_ID")
	private int empId;
	
	
	@Id
	@Column(name="LEAVE_START_DATE")
	private Date leaveStartDate;
	
	@Id
	@Column(name="LEAVE_END_DATE")
	private Date leaveEndDate;
	
	@Id
	@Column(name="LEAVE_NO_OF_DAYS")
	private int numberOfDays;
	
	@Id
	@Column(name="LEAVE_TYPE")
	private LeaveType leaveType;
	
	@Id
	@Column(name="LEAVE_STATUS")
	private LeaveStatus leaveStatus;
	
	
	
	@Id
	@Column(name="LEAVE_REASON")
	private String leaveReason;
	
	@Id
	@Column(name="LEAVE_MNGR_COMMENTS")
	private String managerComment;

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public Date getLeaveStartDate() {
		return leaveStartDate;
	}

	public void setLeaveStartDate(Date leaveStartDate) {
		this.leaveStartDate = leaveStartDate;
	}

	public Date getLeaveEndDate() {
		return leaveEndDate;
	}

	public void setLeaveEndDate(Date leaveEndDate) {
		this.leaveEndDate = leaveEndDate;
	}

	public int getNumberOfDays() {
		return numberOfDays;
	}

	public void setNumberOfDays(int numberOfDays) {
		this.numberOfDays = numberOfDays;
	}

	public LeaveType getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(LeaveType leaveType) {
		this.leaveType = leaveType;
	}

	public LeaveStatus getLeaveStatus() {
		return leaveStatus;
	}

	public void setLeaveStatus(LeaveStatus leaveStatus) {
		this.leaveStatus = leaveStatus;
	}

	public String getLeaveReason() {
		return leaveReason;
	}

	public void setLeaveReason(String leaveReason) {
		this.leaveReason = leaveReason;
	}

	public String getManagerComment() {
		return managerComment;
	}

	public void setManagerComment(String managerComment) {
		this.managerComment = managerComment;
	}


}