package com.baosight.mode;

/**
 * AbstractVwXzxkId generated by MyEclipse Persistence Tools
 */

public abstract class AbstractVwXzxkId implements java.io.Serializable {

	// Fields

	private String activtiyid;

	private String actstate;

	private String processname;

	private String porcessstate;

	private String processid;

	private String partname;

	private String username;

	private String starttime;

	private String endtime;

	private String slh;

	private String projectname;

	private String projectaddress;

	private String applier;

	private String wwgsstatus;

	private String sjtime;

	private String bltime;

	private String jdtime;

	private String tztime;

	// Constructors

	/** default constructor */
	public AbstractVwXzxkId() {
	}

	/** full constructor */
	public AbstractVwXzxkId(String activtiyid, String actstate,
			String processname, String porcessstate, String processid,
			String partname, String username, String starttime, String endtime,
			String slh, String projectname, String projectaddress,
			String applier, String wwgsstatus, String sjtime, String bltime,
			String jdtime, String tztime) {
		this.activtiyid = activtiyid;
		this.actstate = actstate;
		this.processname = processname;
		this.porcessstate = porcessstate;
		this.processid = processid;
		this.partname = partname;
		this.username = username;
		this.starttime = starttime;
		this.endtime = endtime;
		this.slh = slh;
		this.projectname = projectname;
		this.projectaddress = projectaddress;
		this.applier = applier;
		this.wwgsstatus = wwgsstatus;
		this.sjtime = sjtime;
		this.bltime = bltime;
		this.jdtime = jdtime;
		this.tztime = tztime;
	}

	// Property accessors

	public String getActivtiyid() {
		return this.activtiyid;
	}

	public void setActivtiyid(String activtiyid) {
		this.activtiyid = activtiyid;
	}

	public String getActstate() {
		return this.actstate;
	}

	public void setActstate(String actstate) {
		this.actstate = actstate;
	}

	public String getProcessname() {
		return this.processname;
	}

	public void setProcessname(String processname) {
		this.processname = processname;
	}

	public String getPorcessstate() {
		return this.porcessstate;
	}

	public void setPorcessstate(String porcessstate) {
		this.porcessstate = porcessstate;
	}

	public String getProcessid() {
		return this.processid;
	}

	public void setProcessid(String processid) {
		this.processid = processid;
	}

	public String getPartname() {
		return this.partname;
	}

	public void setPartname(String partname) {
		this.partname = partname;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStarttime() {
		return this.starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return this.endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	public String getSlh() {
		return this.slh;
	}

	public void setSlh(String slh) {
		this.slh = slh;
	}

	public String getProjectname() {
		return this.projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getProjectaddress() {
		return this.projectaddress;
	}

	public void setProjectaddress(String projectaddress) {
		this.projectaddress = projectaddress;
	}

	public String getApplier() {
		return this.applier;
	}

	public void setApplier(String applier) {
		this.applier = applier;
	}

	public String getWwgsstatus() {
		return this.wwgsstatus;
	}

	public void setWwgsstatus(String wwgsstatus) {
		this.wwgsstatus = wwgsstatus;
	}

	public String getSjtime() {
		return this.sjtime;
	}

	public void setSjtime(String sjtime) {
		this.sjtime = sjtime;
	}

	public String getBltime() {
		return this.bltime;
	}

	public void setBltime(String bltime) {
		this.bltime = bltime;
	}

	public String getJdtime() {
		return this.jdtime;
	}

	public void setJdtime(String jdtime) {
		this.jdtime = jdtime;
	}

	public String getTztime() {
		return this.tztime;
	}

	public void setTztime(String tztime) {
		this.tztime = tztime;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AbstractVwXzxkId))
			return false;
		AbstractVwXzxkId castOther = (AbstractVwXzxkId) other;

		return ((this.getActivtiyid() == castOther.getActivtiyid()) || (this
				.getActivtiyid() != null
				&& castOther.getActivtiyid() != null && this.getActivtiyid()
				.equals(castOther.getActivtiyid())))
				&& ((this.getActstate() == castOther.getActstate()) || (this
						.getActstate() != null
						&& castOther.getActstate() != null && this
						.getActstate().equals(castOther.getActstate())))
				&& ((this.getProcessname() == castOther.getProcessname()) || (this
						.getProcessname() != null
						&& castOther.getProcessname() != null && this
						.getProcessname().equals(castOther.getProcessname())))
				&& ((this.getPorcessstate() == castOther.getPorcessstate()) || (this
						.getPorcessstate() != null
						&& castOther.getPorcessstate() != null && this
						.getPorcessstate().equals(castOther.getPorcessstate())))
				&& ((this.getProcessid() == castOther.getProcessid()) || (this
						.getProcessid() != null
						&& castOther.getProcessid() != null && this
						.getProcessid().equals(castOther.getProcessid())))
				&& ((this.getPartname() == castOther.getPartname()) || (this
						.getPartname() != null
						&& castOther.getPartname() != null && this
						.getPartname().equals(castOther.getPartname())))
				&& ((this.getUsername() == castOther.getUsername()) || (this
						.getUsername() != null
						&& castOther.getUsername() != null && this
						.getUsername().equals(castOther.getUsername())))
				&& ((this.getStarttime() == castOther.getStarttime()) || (this
						.getStarttime() != null
						&& castOther.getStarttime() != null && this
						.getStarttime().equals(castOther.getStarttime())))
				&& ((this.getEndtime() == castOther.getEndtime()) || (this
						.getEndtime() != null
						&& castOther.getEndtime() != null && this.getEndtime()
						.equals(castOther.getEndtime())))
				&& ((this.getSlh() == castOther.getSlh()) || (this.getSlh() != null
						&& castOther.getSlh() != null && this.getSlh().equals(
						castOther.getSlh())))
				&& ((this.getProjectname() == castOther.getProjectname()) || (this
						.getProjectname() != null
						&& castOther.getProjectname() != null && this
						.getProjectname().equals(castOther.getProjectname())))
				&& ((this.getProjectaddress() == castOther.getProjectaddress()) || (this
						.getProjectaddress() != null
						&& castOther.getProjectaddress() != null && this
						.getProjectaddress().equals(
								castOther.getProjectaddress())))
				&& ((this.getApplier() == castOther.getApplier()) || (this
						.getApplier() != null
						&& castOther.getApplier() != null && this.getApplier()
						.equals(castOther.getApplier())))
				&& ((this.getWwgsstatus() == castOther.getWwgsstatus()) || (this
						.getWwgsstatus() != null
						&& castOther.getWwgsstatus() != null && this
						.getWwgsstatus().equals(castOther.getWwgsstatus())))
				&& ((this.getSjtime() == castOther.getSjtime()) || (this
						.getSjtime() != null
						&& castOther.getSjtime() != null && this.getSjtime()
						.equals(castOther.getSjtime())))
				&& ((this.getBltime() == castOther.getBltime()) || (this
						.getBltime() != null
						&& castOther.getBltime() != null && this.getBltime()
						.equals(castOther.getBltime())))
				&& ((this.getJdtime() == castOther.getJdtime()) || (this
						.getJdtime() != null
						&& castOther.getJdtime() != null && this.getJdtime()
						.equals(castOther.getJdtime())))
				&& ((this.getTztime() == castOther.getTztime()) || (this
						.getTztime() != null
						&& castOther.getTztime() != null && this.getTztime()
						.equals(castOther.getTztime())));
	}

	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getActivtiyid() == null ? 0 : this.getActivtiyid()
						.hashCode());
		result = 37 * result
				+ (getActstate() == null ? 0 : this.getActstate().hashCode());
		result = 37
				* result
				+ (getProcessname() == null ? 0 : this.getProcessname()
						.hashCode());
		result = 37
				* result
				+ (getPorcessstate() == null ? 0 : this.getPorcessstate()
						.hashCode());
		result = 37 * result
				+ (getProcessid() == null ? 0 : this.getProcessid().hashCode());
		result = 37 * result
				+ (getPartname() == null ? 0 : this.getPartname().hashCode());
		result = 37 * result
				+ (getUsername() == null ? 0 : this.getUsername().hashCode());
		result = 37 * result
				+ (getStarttime() == null ? 0 : this.getStarttime().hashCode());
		result = 37 * result
				+ (getEndtime() == null ? 0 : this.getEndtime().hashCode());
		result = 37 * result
				+ (getSlh() == null ? 0 : this.getSlh().hashCode());
		result = 37
				* result
				+ (getProjectname() == null ? 0 : this.getProjectname()
						.hashCode());
		result = 37
				* result
				+ (getProjectaddress() == null ? 0 : this.getProjectaddress()
						.hashCode());
		result = 37 * result
				+ (getApplier() == null ? 0 : this.getApplier().hashCode());
		result = 37
				* result
				+ (getWwgsstatus() == null ? 0 : this.getWwgsstatus()
						.hashCode());
		result = 37 * result
				+ (getSjtime() == null ? 0 : this.getSjtime().hashCode());
		result = 37 * result
				+ (getBltime() == null ? 0 : this.getBltime().hashCode());
		result = 37 * result
				+ (getJdtime() == null ? 0 : this.getJdtime().hashCode());
		result = 37 * result
				+ (getTztime() == null ? 0 : this.getTztime().hashCode());
		return result;
	}

}