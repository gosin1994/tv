<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>

<html lang="en">
<head>
<title>JT捷通-积分入户专家</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta charset utf="8">
<!--font-awsome-css-->
     <link rel="stylesheet" href="${contextPath}/css/h5/font-awesome.min.css"> 
<!--bootstrap-->
	<link href="${contextPath}/css/h5/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--custom css-->
	<link href="${contextPath}/css/h5/style.css" rel="stylesheet" type="text/css"/>
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
  <link href='http://fonts.googleapis.com/css?family=Abril+Fatface' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->


<style>img{max-width:100%}</style>

    </head>
	
<body>
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
						<%-- <img src="${contextPath}/img/h5/banner-h.jpg" alt=" "> --%>
						<!-- <h3 style='color:black;font-style:"仿宋"'>十年入户经验，老牌机构有保障</h3>
							
							<h3>扎根深圳，入户成为“深圳人”</h3>
							
							<h3>政府还给予最高可达3万元补贴</h3> -->


					</div>


				</div>
	<!-- //banner -->
	<!--contact --> 
            <div class="w3agile contact">
            <br/><br/>
			        <h4 >注册会员成功！<br/><br/><br/>以下是您的会员二维码，请您妥善保管(<span style="color:red">长按图片保存至手机</span>)。若您不慎丢失此二维码，请联系工作人员重新获取。<br/><br/><br/>
					他人扫此码成功办理入户，您即可马上获得佣金。他人扫此二维码注册会员，即可成为您下属团队的一员，其推荐人成功办理深户您也可获得相应佣金</h4>
					<br/><br/><br/>
					<%-- <img src="${contextPath}/img/or.jpg"/> --%>
					<img src="${member.qrcodeUrl}"/>
			        <br/><br/><br/><br/>
			</div>
	<!-- //contact-->
    <!--/footer-->
    <jsp:include page="footer.jsp" flush="true" />
	<!--/footer-->
	</div>
</div>


 <script src="${contextPath}/js/h5/bootstrap.min.js"></script>
<script src="${contextPath}/js/h5/jquery.nicescroll.js"></script>
<script src="${contextPath}/js/h5/scripts.js"></script>
</body>
<script>
alert("注册会员成功！请您妥善保管下方个人二维码(长按二维码图片保存至手机)。若您不慎丢失此二维码，请登录会员中心或联系工作人员重新获取。");
</script>
</html>