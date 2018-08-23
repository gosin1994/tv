<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Expires" CONTENT="-1">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache">
<link href="${contextPath}/css/h5_member/ectouch.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/css/h5_member/style.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/font/h5_member/iconfont.css" rel="stylesheet" type="text/css" />
<script src="${contextPath}/js/h5_member/TouchSlide.1.1.source.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/common_js.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery.reveal.js" type="text/javascript"></script>
<title>会员登录</title>
</head>

<body>
<div class="Layout_style">
 <div class="reg_log_style">
  <header id="header">
  <div class="header_l"></div>
  <h1> 会员登录 </h1>
  <div class="header_r">  </div>
</header>
<!--注册样式-->
<form class="form-horizontal"
						action="${contextPath}/o/member/login"
						method="post" onsubmit="return verify();">
  <div class="reg_log_com login">
   <div class="logo"><br/><img src="${contextPath}/img/h5_member/logo1_03.png"  width="210"/><br/><br/></div>
   <div class="reg_log_ADD">
      <div class="l_u"><label><em class="name_icon"></em>姓&nbsp;&nbsp;&nbsp;&nbsp;名:</label><input name="name" type="text"  class="input"/></div>
      <div class="l_u"><label><em class="phone_icon"></em>手机号:</label><input name="phone"  class="input"/></div>
      <div class="login_operating"><br/><label for="remember"> 登录可查看个人二维码、佣金明细</label> </div>
   </div>
   <div class="submit_op"><br/><input type="submit" name="submit" value="立即登陆" class="c-btn3"></div> 
  	<br/><br/>
  </div>
  
  </form>
 </div>
 <div style="text-align:center;">
				Copyright © 2018 All rights reserved 捷通   | 粤ICP备17111325号-2
			</div>
</div>

</body>
</html>
<script>
	
	
	function verify() {
		
		return true;
	}
</script>