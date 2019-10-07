/**
 * 关闭按钮的单机事件，用于关闭项目的详细信息
 */
function hidden1() {
	$("#info").attr("class", "center-block hidden");
}

function show(project) {
	$("#info").attr("class", "center-block show");
	$("#p_name").html(project.pname);
	$("#p_jdk").html(project.jdk);
	$("#p_server").html(project.server);
	$("#p_name").html(project.pname);
	$("#p_database").html(project.dataversion);
	$("#p_framework").html(project.framework);
	$("#p_school").html(project.school);
	$("#p_sales").html(project.sales);
	$("#p_abstra").html(project.abstra);
	$("#p_price").html(project.price);
}

function showProject(id, projectInfos) {
	$.each(projectInfos, function(i, entry) {
		createOne(id, entry);
	})
}

function createOne(id, project) {
	var row = $("#" + id);
	row.append("<div class='col-md-4'><h4>" + project.pname +
	"</h4><img src='" + project.photo + "' width='300px' height='200px' /><br/><br/><ul class='list-inline'><li><samp class='glyphicon glyphicon-jpy text-warning'>" + 
	project.price + "</samp></li><li><a href='javascript:' onclick='lookfk(" + project.pid + ")' title='查看项目简介'><samp class='glyphicon glyphicon-eye-open text-warning'> </samp></a></li><li><a href='javascript:' onclick='lookfk(" + project.pid + 
	")' title='查看项目截图'><samp class='glyphicon glyphicon-picture text-warning'> </samp></a></li><li><a target='view_window' href='" + project.paccess + "' title='链接到该网站，查看效果，进行模拟操作...'><samp class='glyphicon glyphicon glyphicon-link text-warning'> </samp></a></li><li><a href='#' title='购买该项目'><samp class='glyphicon glyphicon-shopping-cart text-warning'> </samp></a></li><li><a href='" +
	u_location + "download/" + project.pid + "' title='下载项目源码'><samp class='glyphicon glyphicon-download text-warning'> </samp></a></li><li><a href='#' title='下载量'><samp class='glyphicon glyphicon-sort text-warning'>" + project.sales + "</samp></a></li>");
	row.append("</ul></div>");
}

function lookfk(id) {
	$.ajax({
		type: "post",
		url: u_location + "project/" + id,
		async: true,
		date: {
			xhrFields: {
				withCredentials: true
			}
		},
		success: function(data) {
			var info = JSON.parse(data);
			show(info);
		}
	});
}

/**
 * 页面加载显示数据
 */
function pageLoad() {
	var isLogin = localStorage.getItem("isLogin");
	if(isLogin=="1") {
		$("#li-my").attr("class", "show");
		$("#li-login").attr("class", "hidden");
		$("#li-zhuce").attr("class", "hidden");
	} else{
		$("#li-my").attr("class", "hidden");
		$("#li-login").attr("class", "show");
		$("#li-zhuce").attr("class", "show");
	}
	$.ajax({
		type: "post",
		url: u_location + "index/1/4",
		async: true,
		date: {
			xhrFields: {
				withCredentials: true
			}
		},
		success: function(data) {
			var info = JSON.parse(data);
			showProject("projectshow", info);
		}
	});

}