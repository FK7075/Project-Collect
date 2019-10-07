package com.project.collect.server;

import java.util.List;

import com.project.collect.mapper.IProjectMapper;
import com.project.collect.pojo.Project;
import com.project.collect.pojo.User;

import xfl.fk.annotation.Autowired;
import xfl.fk.annotation.Service;
import xfl.fk.servlet.Model;

@Service
public class ProjectServer {
	
	@Autowired
	private IProjectMapper projectMapper;
	
	public List<Project> limit(int page,int size){
		return projectMapper.getProjectLimit(page, size);
	}
	
	public String downloadPath(int pid) {
		return projectMapper.getDownloadPath(pid);
	}
	
	public Project getOne(int pid) {
		return projectMapper.getProject(pid);
	}
	
	public boolean login(Model model,String user,String password,boolean checkbox) {
		int time=0;
		if(checkbox) {
			time=60*60*24*7;
		}
		model.setCookieContent("C-USER", user, time);
		model.setCookieContent("C-PASS", password, time);
		User u = projectMapper.login(user, password);
		if(u==null)
			return false;
		else {
			model.setSessionAttribute("PROJECT-USER", u);
			return true;
		}
	}

}
