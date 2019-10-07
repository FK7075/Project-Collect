package com.project.collect.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.project.collect.pojo.Project;
import com.project.collect.server.ProjectServer;

import xfl.fk.annotation.Autowired;
import xfl.fk.annotation.Controller;
import xfl.fk.annotation.CrossOrigin;
import xfl.fk.annotation.RequestMapping;
import xfl.fk.file.MultipartFile;
import xfl.fk.servlet.Model;

@CrossOrigin
@Controller
@RequestMapping("/user")
public class ProjectController {
	
	@Autowired
	private ProjectServer projectServer;
	
	@Autowired("model")
	private Model model;
	
	@RequestMapping("/index->page,size")
	public void indexPage(int page,int size) throws IOException {
		List<Project> limit = projectServer.limit(page, size);
		model.printJson(limit);
	}
	
	@RequestMapping("/download->pid")
	public void download(int pid) throws IOException {
		String downloadPath = projectServer.downloadPath(pid);
		String realPath = model.getRealPath(downloadPath);
		MultipartFile.downloadFile(model.getResponse(), new File(realPath));
	}
	
	@RequestMapping("/project->pid")
	public void getProject(int pid) throws IOException {
		Project one = projectServer.getOne(pid);
		model.printJson(one);
	}
	
	@RequestMapping("/loginLoad")
	public void loginLoad() throws IOException {
		String user=model.getCookieContent("C-USER");
		String pass=model.getCookieContent("C-PASS");
		if(user==null)
			user="";
		if(pass==null)
			pass="";
		String json="{\"user\":\""+user+"\",\"pass\":\""+pass+"\"}";
		model.responseWriter(json);
	}
	
	@RequestMapping("/login")
	public void login(String user,String password,boolean checkbox) throws IOException {
		if(projectServer.login(model, user, password, checkbox))
			model.responsePrintIn("1");
		else
			model.responsePrintIn("0");
	}

}
