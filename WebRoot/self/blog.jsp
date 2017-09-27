<%@page import="com.xiaonei.entity.Blog"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/xiaoneinews/css/blogPage.css" type="text/css"></link>
		<link rel="stylesheet" href="/xiaoneinews/css/css/common.css" type="text/css"></link>
		<script type="text/javascript" src="/xiaoneinews/js/common.js"></script>
		<script type="text/javascript">
		<!--
		function opSelf(){
			//显示我的相册和日志
			document.getElementById("mylog").style.display="";
			document.getElementById("myalbum").style.display="";
			//隐藏个人信息
			document.getElementById("myinfo").style.display="none";
			document.getElementById("tdSelf").style.backgroundColor="#FFFFFF";
			document.getElementById("tdInfo").style.backgroundColor="#D8DFEA";
			
			document.getElementById("tdSelf").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdSelf2").style.borderTopColor="#FFFFFF";
			document.getElementById("tdInfo").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdInfo2").style.borderTopColor="#D8DFEA";
			document.getElementById("aSelf").style.color="black";
			document.getElementById("aInfo").style.color="#3B5888";
		}
		function opInfo(){
			//隐藏我的相册和日志
			document.getElementById("mylog").style.display="none";
			document.getElementById("myalbum").style.display="none";
			//显示个人信息
			document.getElementById("myinfo").style.display="";
			document.getElementById("tdSelf").style.backgroundColor="#D8DFEA";
			document.getElementById("tdInfo").style.backgroundColor="#FFFFFF";
			
			document.getElementById("tdSelf").style.borderBottomColor="#D8DFEA";
			document.getElementById("tdSelf2").style.borderTopColor="#D8DFEA";
			document.getElementById("tdInfo").style.borderBottomColor="#FFFFFF";
			document.getElementById("tdInfo2").style.borderTopColor="#FFFFFF";
			
			
			document.getElementById("aSelf").style.color="#3B5888";
			document.getElementById("aInfo").style.color="black";
		}
		
		/*对相册的图片进行特效*/
		function chgImg(o){
			o.style.borderColor="#3B5888";
			$("a"+o.id).style.borderColor="#D8DFEA";
		}

		function chgImg2(o){
			o.style.borderColor="#D8DFEA";
			$("a"+o.id).style.borderColor="#FFFFFF";
		}
		//-->
		</script>
		<style type="text/css">
/*feed链接*/
a.feed:link {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:visited {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:hover {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

a.feed:active {
	font-size: 14px;
	color: #3B5888;
	text-decoration: none;
}

.feedsp {
	background-color: #D8DFEA;
	font-weight: bold;
	padding: 3px;
	border-top: 2px solid #D8DFEA;
	border-bottom: 2px solid #D8DFEA;
	border-right: 2px solid #FFFFFF;
	border-left: 2px solid #D8DFEA;
}
</style>
	</head>
	<body>

		<jsp:include page="head.jsp"></jsp:include>
		<div class="homePage">
			<div class="homePage_intro">

				<table>
					<tr>
						<td>
							<img src="/xiaoneinews/images/userhead/u1.gif" width="150px" height="150px" />
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="editphoto">
							&nbsp;
							<a href="/xiaoneinews/self/uploadPhoto.jsp" class="xh" id="editphotoa">更改我的头像</a>
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="edit">
							&nbsp;
							<a href="/self/basicInfo.jsp" class="xh" id="edita">编辑我的资料</a>
						</td>
					</tr>
					<tr>
						<td onMouseOver="chgTblusers(this)"
							onMouseOut="chgTblusers2(this)" id="dress">
							&nbsp;
							<a href="#" class="xh" id=dressa>装扮主页</a>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
							<font class="word3">所在网络：</font>清华大学代填
						</td>
					</tr>
					<tr>
						<!-- 如果有生日，则显示 -->
						<td>
							&nbsp;
							<font class="word3">生日：</font>1999-11-11
						</td>
					</tr>
					<tr>
						<!-- 如果有家乡，则显示 -->
						<td>
							&nbsp;
							<font class="word3">家乡：</font> 北京 丰台区
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
				</table>

				<div class="allkinds">
					<img src="/xiaoneinews/images/front/profileleft.jpg" />
				</div>
			</div>
			<!-- 各种信息 -->
			<div class="profile">
				<!-- 当前信息 -->
				
				<!-- 选择你的操作 -->
				
				<!-- 选择你的操作 end -->
				<!-- 相册 album start-->
				
				<!-- 相册 album end-->

				<!-- 日志  start-->
				<div id="mylog" class="log">
					<table>
						<tr>
							<td colspan="2">
								<span class="STYLE3">日志</span>
								<a href="" class="xh">(日志篇数)</a>
							</td>
							<td align="right">
								<a href="/blog.do?type=blog&oid=xx&pageNo=1&year=0&month=0"
									class="xh">查看全部日志</a>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/xiaoneinews/images/front/blog.gif " />
							</td>
							<%List<Blog> bloglist = (List<Blog>)request.getAttribute("bloglist"); %>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="BlogMain.htm?id=<%= bloglist.get(0).getId()%>" class="xh"
									style="font-weight: bold;" ><%=bloglist.get(0).getBlogName() %></a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/xiaoneinews/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">日志的标题</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
						<tr>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<img src="/xiaoneinews/images/front/blog.gif " />
							</td>
							<td style="border-bottom: 1px #D8DFEA solid;">
								<a href="blog.do?type=read&oid=xx>&aid=xx&pageNo=1" class="xh"
									style="font-weight: bold;">日志的标题</a>
							</td>
							<td align="right" style="border-bottom: 1px #D8DFEA solid;">
								<span class="word4">日志发表的日期2008-11-11</span>
							</td>
						</tr>
					</table>
				</div>
				<!--日志 end-->

				<!-- 个人的详细信息，内容比较多，刚开始的时候是不显示 -->
			
					<!-- 基本信息 end -->
					<!-- 个人的兴趣爱好 -->
					
					<!-- 兴趣爱好结束 -->
					<!-- 联系方式 -->
					
					<!-- 联系方式 end -->
					<!-- 学校信息 -->
					
					<!-- 学校信息结束 -->
					<!-- 公司信息开始 -->
					<!-- 公司信息结束 -->
					<!-- 加入班级信息开始 -->
					<!-- 加入班级信息 end -->
				</div>

				<!-- 留言本 start -->
				
				<!-- 留言本 结束 -->
				<!-- 留言的内容，最多显示10条即可 -->
				
				
				<!-- 特别好友列表 -->
				
				<!-- 特别好友列表 end -->
				<!-- 最近来访人 -->
				
				<!-- 最近来访 end -->
				<!-- 好友 start -->
				<!-- 最近来访人 -->
				
				<!-- 好友 end -->
			</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
