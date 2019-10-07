package com.project.collect.pojo;

import xfl.fk.annotation.Column;
import xfl.fk.annotation.Lucky;

/**
 * �û�
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
	 * �û���
	 */
	@Column("u_name")
	private String uname;
	
	/**
	 * ����
	 */
	@Column("u_password")
	private String upassword;
	
	/**
	 * ����ѧУ
	 */
	@Column("u_school")
	private String uschool;
	
	/**
	 * ��ϵ��ʽ
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
