<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html lang="en">
<head>
<title>JT捷通-学历提升专家</title>
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
</head>

<body>
	<div class="body-back" style="background: url(${contextPath}/img/background/bk5.jpg);background-position:center; background-repeat:no-repeat;">
		<div class="masthead pdng-stn1">
			<div class="phone-box wrap push" id="home">
				<div class="menu-notify">
					<div class="profile-left">
						<a href="#" class="menu-link">&nbsp;</a>
					</div>
					<div class="Profile-mid">
						<h5 class="pro-link">
							<a href="#">捷通-提升学历</a>
						</h5>
					</div>
					<div class="Profile-right">
						<a href="${pageContext.request.contextPath}/o/member/login"
							class="sign-in popup-top-anim"> &nbsp;</a>



					</div>
					<div class="clearfix"></div>
				</div>
				<!-- banner -->
				<div>
					<div width="90%" class="details-right">
						<img  src="${contextPath}/img/h5/banner-tr.jpg" alt=" ">
						<!-- <h3 style='color:black;font-style:"仿宋"'>十年入户经验，老牌机构有保障</h3>
							
							<h3>扎根深圳，入户成为“深圳人”</h3>
							
							<h3>政府还给予最高可达3万元补贴</h3> -->


					</div>


				</div>
				<!-- //banner -->
				<!--contact -->
				<div  class="w3agile banner-bottom">
				<%--  style="background: url(${contextPath}/img/background/bk8.jpg);background-position:center; background-repeat:no-repeat;" --%>
					<h3 class="w3ls-title2">在线测试</h3><h4 class="w3ls-title2">领取免考学历提升方案</h4>
					<div class="book-a-ticket">


						<div class=" bann-info">
							<form action="${contextPath}/o/customer/apply" method="post"
								onSubmit="return beforeSubmit(this);">
								<input type="hidden" name="memberId" value="${mid}" />
								<div >
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label class="inputLabel">姓名：</label> <input name="name" style="width:200px;"
											id="name" type="text" placeholder="请填写真实姓名" value=""
											maxlength="50" />
									<div class="clearfix"></div>
								</div>
								<br/>
								<div >
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label class="inputLabel">手机：</label> <input name="phone" style="width:200px;"
											id="phone" class="city" type="text" placeholder="请填写真实手机"
											value="" maxlength="50" />
									<div class="clearfix"></div>
								</div>
								<br/>
								<div >
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label class="inputLabel">年龄：</label> <input class="city" style="width:200px;"
											name="age" id="age" type="text" placeholder="请填写年龄" value=""
											maxlength="2" />
									<div class="clearfix"></div>
								</div>
								<br/>
								<!-- <div >
										<label class="inputLabel">社保：</label> <input class="city" style="width:200px;"
											name="insureYear" id="insureYear" type="text"
											placeholder="请填写社保年限" value="" maxlength="2" />
									<div class="clearfix"></div>
								</div>
								<br/> -->
								<div>
									<label class="inputLabel">当前学历：</label> <select 
										name="educationLevel" id="educationLevel" style="width:200px;">
										<option value="-1">请选择</option>
										<option value="1">初中及以下</option>
										<option value="2">高中/中专</option>
										<option value="3">大专</option>
										<option value="4">本科及以上</option>
									</select>
								</div>
								<br/>
								<div>
									<label class="inputLabel">报考学历：</label> <select 
										name="educationLevel" id="educationLevel" style="width:200px;">
										<option value="-1">请选择</option>
										<option value="1">本科</option>
										<option value="2">专科</option>
										<option value="3">硕士及以上</option>
									</select>
								</div>
								
								
								
								
								
								
								
								<div class="search">

									<input type="submit" value="提交获取测评结果">
								</div>
								<br />
								<br />
								<div style="color:#483D8B; padding-left:30px; padding-top:10px;font-size:3">测评结果将以短信的方式发送，请保持手机畅通！</div>
							</form>
						</div>
					</div>
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
<script type="text/javascript">
	var isPhoneValid = false;

	function beforeSubmit(form) {

		if ($("#name").val() == '' || $("#name").val() == '请输入姓名'
				|| !isUsername($("#name").val())) {
			alert('请填写真实姓名！');
			$("#name").focus();
			return false;
		}
		if ($("#phone").val() == '' || $("#phone").val() == '请输入手机'
				|| !isPhone($("#phone").val())) {
			alert('请填写真实手机号码！');
			$("#phone").focus();
			return false;
		} else {
			checkPhoneUniqueness($("#phone").val())

			if (!isPhoneValid) {
				return false;
			}
		}

		if ($("#age").val() == '' || $("#age").val() == '请输入年龄'
				|| !isNum($("#age").val())) {
			alert('请填写真实的年龄！');
			$("#age").focus();
			return false;
		}

		if ($("#insureYear").val() == '' || $("#insureYear").val() == '请输入社保年限'
				|| !isNum($("#insureYear").val())) {
			alert('请填写真实社保年限！');
			$("#insureYear").focus();
			return false;
		}

		if ($("#educationLevel").val() == '-1') {
			alert('请选择学历！');
			$("#educationLevel").focus();
			return false;
		}

		return true;
	}

	/* function isUsername(temp) 
	 { 
	 var re = /^[\u4E00-\u9FA5]{1,8}$/; 
	 if(re.test(temp)) return true; 
	 return false; 
	 } */
	function isUsername(temp) {
		/*  var re = /^[\u4E00-\u9FA5]{1,8}$/; 
		 if(re.test(temp)) return true; 
		 return false;  */
		return true;
	}

	function isPhone(temp) {
		var re = /^1[0-9]{10}$/;
		if (re.test(temp))
			return true;
		return false;
	}

	function isNum(temp) {
		var re = /^[1-9][0-9]{0,1}$/;
		if (re.test(temp))
			return true;
		return false;
	}

	function checkPhoneUniqueness(phone) {
		$.ajax({
			async : false,
			type : 'GET',
			url : "${contextPath}/o/customer/isPhoneExist",
			data : {
				phone : phone
			},
			success : function(data) {
				if (data) {
					alert("该手机已经存在");
					isPhoneValid = false;
				} else {
					isPhoneValid = true;
				}
			}
		});
	}
</script>
</html>