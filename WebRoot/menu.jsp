<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../mainIndex.jsp"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.String"%>
<%@page import="com.base.vo.MenuInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


</head>
<body onload="onload()">


	<ul id="myTab" class="nav nav-tabs menu-first">
	</ul>
	<div id="myTabContent" class="tab-content"></div>


	<iframe id="mainFrame" name="mainFrame" scrolling="no"
		src="http://www.baidu.com" frameborder="0"
		style="padding: 0px; width: 100%; height: 1000px;"></iframe>
</body>

<script>
	function onload() {
		$
				.ajax({
					type : "get",
					url : "menu/mylist.do",
					success : function(data) {
						var myobj = data;
						if (myobj.length != 0 && myobj) {
							var content = "";
							var child_content = "";
							for (var i = 0; i < myobj.length; i++) {
								content += "<li><a href='#market_"+i+"'>"
										+ myobj[i].menuName + "</a></li>";

								var childobj = myobj[i].childMenus;
								child_content += "<div class='tab-pane fade' id='market_"+i+"'>"
										+ "<ul class='nav nav-tabs' id='child_tab'>";
								for (var j = 0; j < childobj.length; j++) {
									child_content += "<li><a href='"+childobj[j].menuUrl+"' target='mainFrame'><img src='"+childobj[j].menuImage+"' /><a> "
											+ childobj[j].menuName
											+ "</a></a></li>";
								}

								child_content += "<li><a href='j_spring_security_logout'><img src='images/Index/index_07.png'/><a>退出</a></a></li></ul></div>";
							}

							var ul = document.getElementById("myTab");
							ul.innerHTML = content;
							var child_ul = document
									.getElementById("myTabContent");
							child_ul.innerHTML = child_content;
							$('#myTab a:first').tab('show');//初始化显示哪个tab

							$('#myTab a').click(function(e) {
								e.preventDefault();//阻止a链接的跳转行为
								$(this).tab('show');//显示当前选中的链接及关联的content
							});

							$('#child_tab a:first').tab('show');//初始化显示哪个tab
						} else {
							alert("对不起！没有权限.");
						}
					},
					error : function() {
						alert("对不起！程序有问题.");
					}
				});
	}
</script>
</html>