package com.baosight.mode;

/**
 * TbUserOpeation generated by MyEclipse Persistence Tools
 */

public class TbUserOpeation implements java.io.Serializable {

	// Fields

	private String id;

	private String userid;

	private String opeation;

	private Long openum;

	private String rem;

	// Constructors

	/** default constructor */
	public TbUserOpeation() {
	}

	/** full constructor */
	public TbUserOpeation(String userid, String opeation, Long openum,
			String rem) {
		this.userid = userid;
		this.opeation = opeation;
		this.openum = openum;
		this.rem = rem;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getOpeation() {
		return this.opeation;
	}

	public void setOpeation(String opeation) {
		this.opeation = opeation;
	}

	public Long getOpenum() {
		return this.openum;
	}

	public void setOpenum(Long openum) {
		this.openum = openum;
	}

	public String getRem() {
		return this.rem;
	}

	public void setRem(String rem) {
		this.rem = rem;
	}

}