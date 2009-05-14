package com.baosight.mode;

import java.util.Date;

/**
 * TbZwWeekSechedule generated by MyEclipse Persistence Tools
 */

public class TbZwWeekSechedule implements java.io.Serializable {

	// Fields

	private String id;

	private String itemTitle;

	private String itemType;

	private String dept;

	private Date startTime;

	private Date endTime;

	private String attendance;

	private String userId;

	private String promulgator;

	private String origin;

	private String createTime;

	private String rem;

	private String attr2;

	private String attr3;

	private String content;

	private String weekofyear;

	private String colorflag;

	private String deptId;

	private String privateUserId;

	private String ischild;

	private String pid;

	// Constructors

	/**
	 * @return the ischild
	 */
	public String getIschild() {
		return ischild;
	}

	/**
	 * @param ischild
	 *            the ischild to set
	 */
	public void setIschild(String ischild) {
		this.ischild = ischild;
	}

	/**
	 * @return the pid
	 */
	public String getPid() {
		return pid;
	}

	/**
	 * @param pid
	 *            the pid to set
	 */
	public void setPid(String pid) {
		this.pid = pid;
	}

	/**
	 * @return the privateUserId
	 */
	public String getPrivateUserId() {
		return privateUserId;
	}

	/**
	 * @param privateUserId
	 *            the privateUserId to set
	 */
	public void setPrivateUserId(String privateUserId) {
		this.privateUserId = privateUserId;
	}

	/**
	 * @return the deptId
	 */
	public String getDeptId() {
		return deptId;
	}

	/**
	 * @param deptId
	 *            the deptId to set
	 */
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	/**
	 * @return the colorflag
	 */
	public String getColorflag() {
		return colorflag;
	}

	/**
	 * @param colorflag
	 *            the colorflag to set
	 */
	public void setColorflag(String colorflag) {
		this.colorflag = colorflag;
	}

	/** default constructor */
	public TbZwWeekSechedule() {
	}

	/** full constructor */
	public TbZwWeekSechedule(String itemTitle, String itemType, String dept,
			Date startTime, Date endTime, String attendance, String userId,
			String promulgator, String origin, String createTime, String rem,
			String attr2, String attr3, String weekofyear, String content,
			String colorflag, String deptId, String privateUserId,
			String ischild, String pid) {
		this.itemTitle = itemTitle;
		this.itemType = itemType;
		this.dept = dept;
		this.startTime = startTime;
		this.endTime = endTime;
		this.attendance = attendance;
		this.userId = userId;
		this.promulgator = promulgator;
		this.origin = origin;
		this.createTime = createTime;
		this.rem = rem;
		this.attr2 = attr2;
		this.attr3 = attr3;
		this.weekofyear = weekofyear;
		this.content = content;
		this.colorflag = colorflag;
		this.deptId = deptId;
		this.privateUserId = privateUserId;
		this.ischild = ischild;
		this.pid = pid;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getItemTitle() {
		return this.itemTitle;
	}

	public void setItemTitle(String itemTitle) {
		this.itemTitle = itemTitle;
	}

	public String getItemType() {
		return this.itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getDept() {
		return this.dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
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

	public String getAttendance() {
		return this.attendance;
	}

	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPromulgator() {
		return this.promulgator;
	}

	public void setPromulgator(String promulgator) {
		this.promulgator = promulgator;
	}

	public String getOrigin() {
		return this.origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getRem() {
		return this.rem;
	}

	public void setRem(String rem) {
		this.rem = rem;
	}

	public String getAttr2() {
		return this.attr2;
	}

	public void setAttr2(String attr2) {
		this.attr2 = attr2;
	}

	public String getWeekofyear() {
		return this.weekofyear;
	}

	public void setWeekofyear(String weekofyear) {
		this.weekofyear = weekofyear;
	}

	/**
	 * @return the attr3
	 */
	public String getAttr3() {
		return attr3;
	}

	/**
	 * @param attr3
	 *            the attr3 to set
	 */
	public void setAttr3(String attr3) {
		this.attr3 = attr3;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	public TbZwWeekSechedule copy() {
		TbZwWeekSechedule newinstance = new TbZwWeekSechedule();

		newinstance.attendance = this.attendance;
		newinstance.attr2 = this.attr2;
		newinstance.attr3 = this.attr3;
		newinstance.colorflag = this.colorflag;
		newinstance.content = this.content;
		newinstance.createTime = this.createTime;
		newinstance.dept = this.dept;
		newinstance.deptId = this.deptId;
		newinstance.endTime = this.endTime;
		newinstance.id = this.id;
		newinstance.itemTitle = this.itemTitle;
		newinstance.itemType = this.itemType;
		newinstance.origin = this.origin;
		newinstance.promulgator = this.promulgator;
		newinstance.rem = this.rem;
		newinstance.startTime = this.startTime;
		newinstance.userId = this.userId;
		newinstance.weekofyear = this.weekofyear;

		return newinstance;
	}

}