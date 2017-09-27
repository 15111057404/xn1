<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/xiaoneinews/css/css/homePage.css" type="text/css"></link>
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

		
			<form action="AddBlog.htm" method="post">
			<!-- 留言本 start -->
				<div class="guessbook" style="width: 700px;height: 600px">
					<table style="width: 600px;height: 200px;border: 4px;border-bottom-color: #0000">
						<tr>
							<td>
								<span class="STYLE3">标  题</span>
							</td>
							
						</tr>
						<tr>
							<td style="width: 600px;height: 200px">
								<text style="width: 500px; font-size: 25px" name="blogName"></text>
							</td>
						</tr>
						<tr>
							<td>
								<span class="STYLE3">内  容</span>
							</td>
							
						</tr>
						<tr>
							<td colspan="3" style="width: 600px;height: 400px">
								<text style="width: 500px;height: 360px; font-size: 20px" name="descript"></text>
							</td>
						</tr>
						
					</table>
				</div>
				
				<!-- 最近来访 end -->
				<!-- 好友 start -->
				
			</form>

					

				
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
