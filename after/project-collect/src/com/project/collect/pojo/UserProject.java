package com.project.collect.pojo;

import xfl.fk.annotation.Column;
import xfl.fk.annotation.Lucky;

@Lucky(id="u_id")
public class UserProject {
	
	@Column("u_id")
	private Integer uid;
	
	@Column("p_id")
	private Integer pid;
	
	/**
	 * ״̬ 0-�����ύ״̬ 1-����Ԥ��״̬ 2-���������
	 */
	@Column("start")
	private Integer start;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	@Override
	public String toString() {
		return "UserProject [uid=" + uid + ", pid=" + pid + ", start=" + start + "]";
	}
	
	

}
