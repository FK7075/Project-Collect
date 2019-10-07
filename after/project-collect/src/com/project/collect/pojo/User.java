package com.project.collect.pojo;

import xfl.fk.annotation.Column;
import xfl.fk.annotation.Lucky;

/**
 * 用户
 * @author fk-7075
 *
 */
@Lucky(id="u_id")
public class User {
	
	/**
	 * ID
	 */
	@Column("u_id")
	private Integer uid;
	
	/**
	 * 用户名
	 */
	@Column("u_name")
	private String uname;
	
	/**
	 * 密码
	 */
	@Column("u_password")
	private String upassword;
	
	/**
	 * 所在学校
	 */
	@Column("u_school")
	private String uschool;
	
	/**
	 * 联系方式
	 */
	@Column("u_tel")
	private String utel;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUschool() {
		return uschool;
	}

	public void setUschool(String uschool) {
		this.uschool = uschool;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", uschool=" + uschool + ", utel="
				+ utel + "]";
	}
	

}
