package com.project.collect.mapper;

import java.util.List;

import com.project.collect.pojo.Project;
import com.project.collect.pojo.User;

import xfl.fk.annotation.Page;
import xfl.fk.annotation.Select;

public interface IProjectMapper {

	@Page("SELECT p_id,p_name,photo,price,sales,p_access FROM project ORDER BY sales LIMIT ?,?")
	List<Project> getProjectLimit(int pageNum,int size);

	@Select("SELECT p_download FROM project WHERE p_id=?")
	String getDownloadPath(int pid);
	
	@Select(byid=true)
	Project getProject(int pid);
	
	@Select("SELECT * FROM user WHERE u_name=? AND u_password=?")
	User login(String user,String pass);
}
