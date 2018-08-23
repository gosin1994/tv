

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />




<!DOCTYPE html>

<html lang="en">
<head>
<title>诚邀推荐朋友办理深户赚大钱</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<meta charset utf="8">
<!--font-awsome-css-->
<link rel="stylesheet" href="${contextPath}/css/h5/font-awesome.min.css">
<!--bootstrap-->
<link href="${contextPath}/css/h5/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!--custom css-->
<link href="${contextPath}/css/h5/style.css" rel="stylesheet"
	type="text/css" />
<!--component-css-->
<script src="${contextPath}/js/h5/jquery-2.1.4.min.js"></script>
<!--script-->
<script src="${contextPath}/js/h5/modernizr.custom.js"></script>
<script src="${contextPath}/js/h5/bigSlide.js"></script>
<script>
	$(document).ready(function() {
		$('.menu-link').bigSlide();
	});
</script>
<!-- web-fonts -->
<link href='http://fonts.googleapis.com/css?family=Abril+Fatface'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
<style>
img {
	max-width: 100%
}
</style>


<style>
.link-btns{position:fixed;right:0;bottom:0;left:0;z-index:1000;}
.wrap{margin:.5em auto .8em;border:1px solid #AEBDCD;background-color:#F1F5FA;box-shadow:0 5px 5px rgba(64,100,138,.4);box-sizing:border-box;overflow:hidden;border-radius:3px;}
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
<div class="link-btns"> 
<div class="wrap" id="link-btns"> 
<a href="${pageContext.request.contextPath}/o/member/login" target="_blank" class="l-btn"><span>会员中心</span></a> 
<a href="tel:0755-32831222" class="l-btn"><span>拨打电话</span></a>
</div> 
</div>


	<div class="body-back">
		<div class="masthead pdng-stn1">
			<div class="phone-box wrap push" id="home">
				<div class="menu-notify">
					<div class="profile-left">
						<a href="#" class="menu-link">&nbsp;</a>
					</div>
					<div class="Profile-mid">
						<h5 class="pro-link">
							<a href="#">捷通-积分入户</a>
						</h5>
					</div>
					<div class="Profile-right">
						<a href="${pageContext.request.contextPath}/o/member/login"
							class="sign-in popup-top-anim"> <i class="fa fa-user"></i></a>



					</div>
					<div class="clearfix"></div>
				</div>
				<!-- banner -->
				<div>
					<div class="details-right">
						<img src="${contextPath}/img/h5/banner-h.jpg" alt=" ">
						<!-- <h3 style='color:black;font-style:"仿宋"'>十年入户经验，老牌机构有保障</h3>
							
							<h3>扎根深圳，入户成为“深圳人”</h3>
							
							<h3>政府还给予最高可达3万元补贴</h3> -->


					</div>


				</div>
				<div class="w3agile banner-bottom">
					<div class="details-right">
						<br />
						<p>
							<span style="font-family: Microsoft YaHei,Arial, Helvetica, sans-serif;color: #e50000;font-size: 20px;font-weight: bold;">注册成为会员可享权益：</span><br />
							<span style="font-family: Microsoft YaHei,Arial, Helvetica, sans-serif;color: #e50000;font-size: 20px;font-weight: bold;">推荐即可分红！</span><br /> 
							<span style="font-family: Microsoft YaHei,Arial, Helvetica, sans-serif;color: #e50000;font-size: 20px;font-weight: bold;">入户还能赚钱！</span>
						</p>

						<br />
						<br />

					</div>

					<p class="btn-app-store">
						<a class="btn btn-danger btn-lg"
							href="${pageContext.request.contextPath}/o/customer/apply?mid=${mid}"
							style="padding: 10px 20px;">我要入户</a> &nbsp;&nbsp;&nbsp;&nbsp;<a
							class="btn btn-danger btn-lg"
							href="${pageContext.request.contextPath}/o/member/apply?mid=${mid}"
							style="padding: 10px 20px;">注册会员赚佣金</a>
					</p>
					<br />
					<br /> <br />
					<p>
						<a href="${pageContext.request.contextPath}/o/member/login"><font
							size="4">进入会员中心，查看个人二维码及佣金</font></a>
					</p>
					<br />
				</div>
				<!-- //banner -->

				<!--/footer-->
				<jsp:include page="footer.jsp" flush="true" />
				<!--/footer-->
			</div>
		</div>


		<script src="${contextPath}/js/h5/bootstrap.min.js"></script>
		<script src="${contextPath}/js/h5/jquery.nicescroll.js"></script>
		<script src="${contextPath}/js/h5/scripts.js"></script>
</body>
</html>