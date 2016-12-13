<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../mainIndex.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


</head>
<body>
	<ul id="myTab" class="nav nav-tabs menu-first">
		<li class="active"><a href="#start" data-toggle="tab"> 开始 </a></li>
		<li><a href="#consultation" data-toggle="tab">前台咨询</a></li>
		<li><a href="#teaching" data-toggle="tab">教务教学</a></li>
		<li><a href="#market" data-toggle="tab">市场分析</a></li>
		<li><a href="#finance" data-toggle="tab">财务统计</a></li>
		<li><a href="#personnelMatters" data-toggle="tab">人事统计</a></li>
		<li><a href="#setting" data-toggle="tab">系统设置</a></li>
	</ul>


	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="start">
			<ul id="startTab" class="nav nav-tabs menu-second">
				<li class="active"><a href="#" data-toggle="tab"> 分析 </a></li>
				<li><a href="#" data-toggle="tab">今日咨询</a></li>
				<li><a href="#" data-toggle="tab">今日报名</a></li>
				<li><a href="#" data-toggle="tab">今日回访</a></li>
				<li><a href="#" data-toggle="tab">今日试听</a></li>
				<li><a href="#" data-toggle="tab">欠费学员</a></li>
				<li><a href="#" data-toggle="tab">本月生日</a></li>
				<li><a href="#" data-toggle="tab"><div align="center">
							<img src="./rs/Optimised/setting.png" />
						</div> 学校公告</a></li>
				<li><a href="<%=basePath%>j_spring_security_logout">关闭系统</a></li>
			</ul>
		</div>
		<div class="tab-pane fade" id="consultation">
			<ul id="consultationTab" class="nav nav-tabs menu-second">
				<li class="active"><a href="#" data-toggle="tab"> 新咨询 </a></li>
				<li><a href="#" data-toggle="tab">咨询记录</a></li>
				<li><a href="#" data-toggle="tab">新生报名</a></li>
				<li><a href="#" data-toggle="tab">老生续报</a></li>
				<li><a href="#" data-toggle="tab">查学员</a></li>
				<li><a href="#" data-toggle="tab">学院档案</a></li>
				<li>
					<ul id="changeTab" class="nav nav-list">
						<li><a href="#" data-toggle="tab">补费续费</a></li>
						<li><a href="#" data-toggle="tab">办理转班</a></li>
						<li><a href="#" data-toggle="tab">办理退费</a></li>
					</ul>
				</li>
				<li>
					<ul id="overTab" class="nav nav-list">
						<li><a href="#" data-toggle="tab">办理停课</a></li>
						<li><a href="#" data-toggle="tab">办理结业</a></li>
					</ul>
				</li>
				<li>
					<ul id="emailTab" class="nav nav-list">
						<li><a href="#" data-toggle="tab">写信息</a></li>
						<li><a href="#" data-toggle="tab">发信箱</a></li>
						<li><a href="#" data-toggle="tab">收信箱</a></li>
					</ul>
				</li>
				<li><a href="#" data-toggle="tab">学校公告</a></li>
				<li><a href="#" data-toggle="tab">关闭系统</a></li>
			</ul>
		</div>
		<div class="tab-pane fade" id="teaching">
			<ul id="teachingTab" class="nav nav-tabs menu-second">
				<li class="active"><a href="#" data-toggle="tab">教师点名</a></li>
				<li><a href="#" data-toggle="tab">点名表</a></li>
				<li><a href="#" data-toggle="tab">学员进度</a></li>
				<li><a href="#" data-toggle="tab">进度表</a></li>
				<li><a href="#" data-toggle="tab">学员档案</a></li>
				<li><a href="#" data-toggle="tab">添加课程</a></li>
				<li><a href="#" data-toggle="tab">查学员</a></li>
				<li><a href="#" data-toggle="tab">学员生日</a></li>
				<li>
					<ul id="emailTab" class="nav nav-list">
						<li><a href="#" data-toggle="tab">写信息</a></li>
						<li><a href="#" data-toggle="tab">发信箱</a></li>
						<li><a href="#" data-toggle="tab">收信箱</a></li>
					</ul>
				</li>
				<li><a href="#" data-toggle="tab">学校公告</a></li>
				<li><a href="#" data-toggle="tab">关闭系统</a></li>
			</ul>
		</div>
		<div class="tab-pane fade" id="market">
			<ul id="teachingTab" class="nav nav-tabs">

				<li>
					<ul id="campusTab" class="nav nav-list">
						<li class="active"><a href="#" data-toggle="tab">校区咨询总量</a></li>
						<li><a href="#" data-toggle="tab">校区月咨询总量</a></li>
						<li><a href="#" data-toggle="tab">咨询方式来源</a></li>
					</ul>
				</li>
				<li><a href="#" data-toggle="tab">咨询来源趋势</a></li>
				<li><a href="#" data-toggle="tab">报名来源趋势</a></li>
				<li><a href="#" data-toggle="tab">每月新生</a></li>
				<li><a href="#" data-toggle="tab">前台咨询量</a></li>
				<li><a href="#" data-toggle="tab">咨询报名量</a></li>
				<li>
					<ul id="emailTab" class="nav nav-list">
						<li><a href="#" data-toggle="tab">写信息</a></li>
						<li><a href="#" data-toggle="tab">发信箱</a></li>
						<li><a href="#" data-toggle="tab">收信箱</a></li>
					</ul>
				</li>


				<li><a href="#" data-toggle="tab">学校公告</a></li>
				<li><a href="#" data-toggle="tab">关闭系统</a></li>
			</ul>
		</div>


		<div class="tab-pane fade" id="finance">
			<p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和
				Apple TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
		</div>
		<div class="tab-pane fade" id="personnelMatters">
			<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
		</div>
		<div class="tab-pane fade" id="setting">
			<ul id="settingTab" class="nav nav-tabs">
				<li class="active"><a href="user/list.do" target="mainFrame">用户</a></li>
				<li><a href="role/list.do" target="mainFrame">角色</a></li>
				<li><a href="ucenter/sys/roleResourceSet.jsp"
					target="mainFrame">菜单</a></li>
				<li><a href="menu/list.do" target="mainFrame">菜单</a></li>
			</ul>
		</div>

	</div>
	<iframe id="mainFrame" name="mainFrame" scrolling="no" src="Index.aspx"
		frameborder="0" style="padding: 0px; width: 100%; height: 1000px;"></iframe>
</body>
</html>