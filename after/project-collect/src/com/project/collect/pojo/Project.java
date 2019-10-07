package com.project.collect.pojo;

import xfl.fk.annotation.Column;
import xfl.fk.annotation.Lucky;

@Lucky(id="p_id")
public class Project {
	
	@Column("p_id")
	private Integer pid;
	
	
	/**
	 * ��Ŀ��
	 */
	@Column("p_name")
	private String pname;
	
	/**
	 * ���ʵ�ַ
	 */
	@Column("p_access")
	private String paccess;
	
	/**
	 * ���ص�ַ
	 */
	@Column("p_download")
	private String pdownload;
	
	/**
	 * ͼƬ
	 */
	@Column("photo")
	private String photo;
	
	/**
	 * �۸�
	 */
	@Column("price")
	private Double price;
	
	/**
	 * JDK�汾
	 */
	@Column("jdk")
	private String jdk;
	
	/**
	 * �������汾
	 */
	@Column("server")
	private String server;
	
	/**
	 * ��ܼ���ջ
	 */
	@Column("framework")
	private String framework;
	
	/**
	 * ���ݿ�汾
	 */
	@Column("dataversion")
	private String dataversion;
	
	/**
	 * ��������
	 */
	@Column("abstra")
	private String abstra;
	
	/**
	 * ����
	 */
	@Column("sales")
	private Integer sales;
	
	

	public Integer getSales() {
		return sales;
	}

	public void setSales(Integer sales) {
		this.sales = sales;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPaccess() {
		return paccess;
	}

	public void setPaccess(String paccess) {
		this.paccess = paccess;
	}

	public String getPdownload() {
		return pdownload;
	}

	public void setPdownload(String pdownload) {
		this.pdownload = pdownload;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	

	public String getJdk() {
		return jdk;
	}

	public void setJdk(String jdk) {
		this.jdk = jdk;
	}

	public String getServer() {
		return server;
	}

	public void setServer(String server) {
		this.server = server;
	}

	public String getFramework() {
		return framework;
	}

	public void setFramework(String framework) {
		this.framework = framework;
	}

	

	public String getDataversion() {
		return dataversion;
	}

	public void setDataversion(String dataversion) {
		this.dataversion = dataversion;
	}


	public String getAbstra() {
		return abstra;
	}

	public void setAbstra(String abstra) {
		this.abstra = abstra;
	}

	@Override
	public String toString() {
		return "Project [pid=" + pid + ", pname=" + pname + ", paccess=" + paccess + ", pdownload=" + pdownload
				+ ", photo=" + photo + ", price=" + price + ", jdk=" + jdk + ", server=" + server + ", framework="
				+ framework + ", dataversion=" + dataversion + ", abstra=" + abstra + ", sales=" + sales + "]";
	}
	
}
