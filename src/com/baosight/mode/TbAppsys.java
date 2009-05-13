package com.baosight.mode;

/**
 * TbAppsys generated by MyEclipse Persistence Tools
 */

public class TbAppsys implements java.io.Serializable {

	// Fields

	private String id;

	private String name;

	private String url;

	private String code;

	private String rem;

	private Long ischild;

	//1 ���á�0δ����
	private Long insure;

	// Constructors

	/** default constructor */
	public TbAppsys() {
	}

	/** minimal constructor */
	public TbAppsys(String name, String url, String code, Long ischild) {
		this.name = name;
		this.url = url;
		this.code = code;
		this.ischild = ischild;
	}

	/** full constructor */
	public TbAppsys(String name, String url, String code, String rem,
			Long ischild) {
		this.name = name;
		this.url = url;
		this.code = code;
		this.rem = rem;
		this.ischild = ischild;
	}
	
	public TbAppsys(String name, String url, String code,
			String rem, Long ischild, Long insure) {
		super();
		this.name = name;
		this.url = url;
		this.code = code;
		this.rem = rem;
		this.ischild = ischild;
		this.insure = insure;
	}

	// Property accessors

	public TbAppsys(String id, String name, String url, String code,
			String rem, Long ischild, Long insure) {
		super();
		this.id = id;
		this.name = name;
		this.url = url;
		this.code = code;
		this.rem = rem;
		this.ischild = ischild;
		this.insure = insure;
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRem() {
		return this.rem;
	}

	public void setRem(String rem) {
		this.rem = rem;
	}

	public Long getIschild() {
		return this.ischild;
	}

	public void setIschild(Long ischild) {
		this.ischild = ischild;
	}

	public Long getInsure() {
		return insure;
	}

	public void setInsure(Long insure) {
		this.insure = insure;
	}

}