package com.project.collect.pojo;

import xfl.fk.annotation.Column;
import xfl.fk.annotation.Lucky;

@Lucky(id="a_id")
public class Admin {
	
	/**
	 * ID
	 */
	@Column("a_id")
	private Integer aid;
	
	/**
	 * ”√ªß√˚
	 */
	@Column("a_name")
	private String aname;
	
	/**
	 * √‹¬Î
	 */
	@Column("a_password")
	private String apassword;

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public String getApassword() {
		return apassword;
	}

	public void setApassword(String apassword) {
		this.apassword = apassword;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", apassword=" + apassword + "]";
	}
	
	

}
