package com.baosight.mode;

import java.util.Date;

/**
 * TbVehiclesApply generated by MyEclipse Persistence Tools
 */

public class TbVehiclesApply implements java.io.Serializable {

	// Fields

	private String id;

	private String applyDept;

	private String auditor;

	private String model;

	private Long capacity;

	private String applyer;

	private String phone;

	private Date startTime;

	private Date endTime;

	private Date applyTime;

	private String startLoc;

	private String dest;

	private String reason;

	private String dispatcher;

	private String driver;

	private String license;

	private String rem;

	private Long status;

	private String belSys;

	private String attr1;

	private String attr2;

	private String attr3;

	// Constructors

	/** default constructor */
	public TbVehiclesApply() {
	}

	/** full constructor */
	public TbVehiclesApply(String applyDept, String auditor, String model,
			Long capacity, String applyer, String phone, Date startTime,
			Date endTime, Date applyTime, String startLoc, String dest,
			String reason, String dispatcher, String driver, String license,
			String rem, Long status, String belSys, String attr1, String attr2,
			String attr3) {
		this.applyDept = applyDept;
		this.auditor = auditor;
		this.model = model;
		this.capacity = capacity;
		this.applyer = applyer;
		this.phone = phone;
		this.startTime = startTime;
		this.endTime = endTime;
		this.applyTime = applyTime;
		this.startLoc = startLoc;
		this.dest = dest;
		this.reason = reason;
		this.dispatcher = dispatcher;
		this.driver = driver;
		this.license = license;
		this.rem = rem;
		this.status = status;
		this.belSys = belSys;
		this.attr1 = attr1;
		this.attr2 = attr2;
		this.attr3 = attr3;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getApplyDept() {
		return this.applyDept;
	}

	public void setApplyDept(String applyDept) {
		this.applyDept = applyDept;
	}

	public String getAuditor() {
		return this.auditor;
	}

	public void setAuditor(String auditor) {
		this.auditor = auditor;
	}

	public String getModel() {
		return this.model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Long getCapacity() {
		return this.capacity;
	}

	public void setCapacity(Long capacity) {
		this.capacity = capacity;
	}

	public String getApplyer() {
		return this.applyer;
	}

	public void setApplyer(String applyer) {
		this.applyer = applyer;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getApplyTime() {
		return this.applyTime;
	}

	public void setApplyTime(Date applyTime) {
		this.applyTime = applyTime;
	}

	public String getStartLoc() {
		return this.startLoc;
	}

	public void setStartLoc(String startLoc) {
		this.startLoc = startLoc;
	}

	public String getDest() {
		return this.dest;
	}

	public void setDest(String dest) {
		this.dest = dest;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDispatcher() {
		return this.dispatcher;
	}

	public void setDispatcher(String dispatcher) {
		this.dispatcher = dispatcher;
	}

	public String getDriver() {
		return this.driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getLicense() {
		return this.license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getRem() {
		return this.rem;
	}

	public void setRem(String rem) {
		this.rem = rem;
	}

	public Long getStatus() {
		return this.status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}

	public String getBelSys() {
		return this.belSys;
	}

	public void setBelSys(String belSys) {
		this.belSys = belSys;
	}

	public String getAttr1() {
		return this.attr1;
	}

	public void setAttr1(String attr1) {
		this.attr1 = attr1;
	}

	public String getAttr2() {
		return this.attr2;
	}

	public void setAttr2(String attr2) {
		this.attr2 = attr2;
	}

	public String getAttr3() {
		return this.attr3;
	}

	public void setAttr3(String attr3) {
		this.attr3 = attr3;
	}

}