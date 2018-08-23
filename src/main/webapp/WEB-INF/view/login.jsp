<!--
	author：龚鑫
	  date：2018-08-13 14:23  
	 email：gx1008666@163.com
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<title>管理员后台</title>
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->
<!--泡泡js-->
<!--script src="../../../resources/js/h5/background.js"></script>-->
<script async type="text/javascript" src="${contextPath}/js/h5/background.js"></script>
<style type="text/css">
/*body {
	background: url(..${contextPath}/img/bg-login.jpg) !important;
}*/

/*背景泡泡样式*/
		body, html {
			position: absolute;
			top: 0;
			bottom: 0;
			left: 0;
			right: 0;

			margin: 0;
			padding: 0;
		}
		#background {
			position: fixed;
			top: 0;
			left: 0;

			z-index: -100;
		}
/*背景泡泡样式结束*/
/*登录输入框*/
.ow-fluid input{
	width: 50%;
}

.inp{
	width:250px;
	height: 70px;
}
.inp2{
	width:180px;
	height: 70px;
}

/*登录输入框结束*/
/*logo样式*/
.img {
	width: 200px;
	height: 133px;
}


/*logo样式结束*/

</style>


<jsp:include page="resource_link.jsp" flush="true" />
</head>

<body onload="init();">
	<!--背景泡泡-->
	<canvas id="background"></canvas>   

	<div class="container-fluid">
		<!--背景泡泡-->
	<canvas id="background"></canvas>  

		
		<div class="row-fluid">

			<div class="row-fluid">
				<br/><br/><br/><br/>
				
   <!--===============logo位置=========================-->
   <!--<div >
   		<center>
   			<img class="img" src="${contextPath}/img/background/logo2.png"/>
 		</center>
   </div>-->
   <br />
   <!--=============logo位置结束=========================-->
   
				<h1 style="color: white;" align="center">管理后台<sup>v2.1</sup></h1>
				<br />
				<!--==============登录div===============-->
				<div>
					<center>
					<form class="form-horizontal"
						action="${contextPath}/login"
						method="post" onsubmit="return verify();">
						
					<input class="inp"  class="input-large span10"  name="phone" id="phone"
							value=""  maxlength="11" type="text" placeholder="请输入手机号" />
					<br /><br />	
					<input class="inp" class="input-large span10"  name="password" id="passwd"
							value="" type="password" placeholder="请输入密码" />	
					<br /><br />		
					<div >
					<input class="inp2" class="input-large span10" name="verifyCode" id="verifyCode"
									type="text" placeholder="请输入验证码" />
									
					&nbsp;&nbsp;		
						<img alt="看不清？点击换一张"  onclick="refreshCode(this)" src="${contextPath}/getCode">
								
								
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="message" style="color:red"></span>
							<div class="button-login">
								<button type="submit" class="btn btn-primary">登录</button>
							</div>	
					</form>
					</center>
				</div>
				
				<!--===============登录div结束=================-->
				
				
				
				<!--<div class="login-box">
					<div class="icons">
						<a href="#"><i class="halflings-icon home"></i></a>
					</div>
					<form class="form-horizontal"
						action="${contextPath}/login"
						method="post" onsubmit="return verify();">
						<fieldset>

							<div class="input-prepend" title="手机号">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" value="18319053557" name="phone" id="phone"
									type="text" placeholder="手机号" />
							</div>
							<div class="input-prepend" title="密码">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" value="123456" name="password" id="passwd"
									type="password" placeholder="密码" />
							</div>
							<div class="input-prepend" title="验证码">
								<table width="88%" height="50px" align="center">
								<tr>
								<td width="75%" align="left">
								<span class="add-on"><i class="halflings-icon"></i></span>
								<input class="input-large span10" name="verifyCode" id="verifyCode"
									type="text" placeholder="验证码" />
								</td>
								<td>
								<img alt="看不清？点击换一张"  onclick="refreshCode(this)" src="${contextPath}/getCode">
								
								</td>
								</tr>
								</table>
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="message" style="color:red"></span>
							<div class="button-login">
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
							<div class="clearfix"></div>
						</fieldset>
					</form>
					<hr>
				</div>-->
				<!--/span-->
			</div>
			<!--/row-->

		</div>
		<!--/fluid-row-->

	</div>
	<!--/.fluid-container-->

<script>
	function init(){
		if("verify"=="${param.msg}"){
			$("#message").html("您输入的验证码不正确，请重新输入");
		}else if("incorrect"=="${param.msg}"){
			$("#message").html("您输入的账号或密码不正确，请重新输入");
		}else if("lock"=="${param.msg}"){
			$("#message").html("您的账号已被锁定，请联系管理员");
		}
	}
	
	
	function refreshCode(el){
		var nowDate = new Date();
		el.src = "${ctx}/getcode?d="+nowDate.getTime();
	}
	
	function verify() {
		var account = $("#phone").val();
		var password = $("#passwd").val();
		var verifyCode = $("#verifyCode").val();
		if(account.length==0){
			$("#message").html("手机号不能为空");
			return false;
		}
		if(password.length==0){
			$("#message").html("密码不能为空");
			return false;
		}
		if(verifyCode.length==0){
			$("#message").html("验证码不能为空");
			return false;
		}
		return true;
	}
</script>

</body>
</html>
