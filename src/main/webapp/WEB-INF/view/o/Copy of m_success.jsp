<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=gbk" />
<script type="text/javascript" src="${contextPath}/js/jquery-1.9.1.min.js"></script>
<meta charset="gbk" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta name="googlebot" content="index,follow" /> 
<title>JT捷通-积分入户专家</title>
<meta name="keywords" content="JT捷通深圳积分入户办理,2015年深圳积分入户政策,龙华积分入户代办,民治积分入户代办,坂田积分入户代办,积分入户代办,福田积分入户代办,华强北积分入户代办,华强路积分入户代办,华强路积分入户办理,客户服务管理师培训,养老护理员培训,电子商务师培训,公共营养师培训"/>
<!-- Templates core CSS --> 
<link href="${contextPath}/css/o/choose1/style.css" rel="stylesheet" /> 
<!-- Favicons --> 
<style>
.link-btns{position:fixed;right:0;bottom:0;left:0;z-index:1000;}
.wrap{width:80%;margin:.5em auto .8em;border:1px solid #AEBDCD;background-color:#F1F5FA;box-shadow:0 5px 5px rgba(64,100,138,.4);box-sizing:border-box;overflow:hidden;border-radius:3px;}
.link-btns .l-btn{position:relative;display:inline-block;float:left;width:50%;min-height:50px;height:50px;line-height:40px;padding:.5em 0 .2em;color:#5C7894;text-decoration:none;}
.link-btns .l-btn.hover{background-color:#B5CDE6;}
.link-btns .l-btn span{position:relative;display:block;width:6.5em;margin:0 auto;}
.link-btns .l-btn span:after{content:' ';position:absolute;top:0;width:35px;height:35px;background-repeat:no-repeat;}
.link-btns .l-btn.tal span{text-align:right;}
.link-btns .l-btn.tal span:after{left:0;background-position:0 0;}
.link-btns .l-btn.tel span:after{right:0;background-position:-45px 0;}
.link-btns .l-btn:first-child{border-right:1px solid #DBE5F0;}
</style> 
</head>
<body>
<header class="jumbotron" role="banner" id="secton-1"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-7"> 
<figure class="text-center"> 
<div class="slideDown""> <img src="${contextPath}/img/o/logo.png" alt="" height="45" class="img-logo" /> 
</figure> 
 
</div> 
</div> 
</div> 
</header> 



<footer class="footer-section" role="contentinfo"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-4 col-footer"> 
<ul class="addthis_toolbox addthis_default_style"> 
<li><a class="addthis_button_facebook_like"></a></li> 
<li><a class="addthis_button_tweet"></a></li> 
</ul> 
</div> 
<div class="col-md-4 col-footer"> 
<section> 
<h5 style="margin-bottom:10px;">注册会员成功！以下是您的会员二维码，请您妥善保管(保存至手机)<br/><br/><br/>
他人扫此码成功办理入户，您即可马上获得佣金。他人扫此二维码注册会员，即可成为您的下线，使您有机会赚取下线的佣金</h5>
<br/><br/><br/>
<img src="${member.qrcodeUrl}"/>
</div> 
</div> 
</footer> 
</body>
</html>