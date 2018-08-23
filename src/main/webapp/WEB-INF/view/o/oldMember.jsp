<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html lang="en">
<head>
<title>JT捷通-积分入户专家</title>
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
					<h3 class="w3ls-title2">会员注册</h3>
					<div class="book-a-ticket">


						<div class=" bann-info">
							<form action="${contextPath}/o/member/apply" method="post"
								onSubmit="return beforeSubmit(this);">
								<input type="hidden" name="pid" value="${mid}" />
								<input type="hidden" name="customerId" value="${cid}" />
								<div style="text-align: center">
										<label class="inputLabel">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
										<input name="name" style="width:240px;"
											id="name" type="text" placeholder="请填写真实姓名"
											value="${customer.name}" maxlength="50" />&nbsp;<span style="color:red">*</span>
									<div class="clearfix"></div>
								</div>
								<br/>
								<div style="text-align: center">
										<label class="inputLabel">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</label> 
										<input name="phone" style="width:240px;"
											id="phone" class="city" type="text" placeholder="请填写真实手机"
											value="${customer.phone}" maxlength="50" />&nbsp;<span style="color:red">*</span>
									<div class="clearfix"></div>
								</div>
								<br/>
								<div style="text-align: center">
										<label class="inputLabel">&nbsp;&nbsp;&nbsp;&nbsp;支付宝：</label> 
										<input class="city" style="width:240px;"
											name="alipayNo" id="alipayNo" type="text"
											placeholder="请填写支付宝账号（推荐使用）" maxlength="50" />&nbsp;<span style="color:red">*</span>
									<div class="clearfix"></div>
								</div>
								<br/>
								<div style="text-align: center">
										<label class="inputLabel">开户银行：</label> <input class="city" style="width:240px;"
											name="bankName" id="bankName" type="text"
											placeholder="请填写开户银行（可不填）" maxlength="50" /><span>&nbsp;</span>
									<div class="clearfix"></div>
								</div>
								<br/>
								<div style="text-align: center">
										<label class="inputLabel">&nbsp;&nbsp;&nbsp;开户名：</label> <input class="city" style="width:240px;"
											name="bankAccountName" id="bankAccountName" type="text"
											placeholder="请填写开户姓名（可不填）" maxlength="50" /><span>&nbsp;</span>
									<div class="clearfix"></div>
								</div>
								<br/>
								<div style="text-align: center">
										<label class="inputLabel">开户账号：</label> <input class="city" style="width:240px;"
											name="bankAccountNo" id="bankAccountNo" type="text"
											placeholder="请填写开户账号（可不填）" maxlength="50" /><span>&nbsp;</span>
									<div class="clearfix"></div>
								</div>
								<div class="search">

									<input type="submit" value="注册">
								</div>
							</form>
							<p>佣金赚取规则：</p>
							<p>1、您注册成为会员后，可以自己办理入户，也可以推荐别人成为会员。推荐成功入户累计达到相应的数量，可以升级到相应的级别。例如，推荐成功1人可升级到高级会员，并获得此级别佣金200元。</p>
							<p>2、您推荐的会员如果也推荐他的朋友入户，您也有机会获得佣金。您推荐的越多，您的会员级别越高，所能赚取的单笔佣金越高。佣金表如下：</p>
							<table class="table table-bordered agileinfo">
								<thead>
									<tr>
										<td colspan=5>深户协办服务费，会员价2800元</td>
									</tr>
									<tr>
										<th>级别</th>
										<th>升级条件</th>
										<th>代理价</th>
										<th>佣金</th>
										<th>可赚取下一级别的佣金差额</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="wthree">会员</td>
										<td class="wthree">提交个人资料注册即可</td>
										<td class="wthree">2600</td>
										<td class="wthree">200</td>
										<td class="wthree">0</td>

									</tr>
									<tr>
										<td class="wthree">高级会员</td>
										<td class="wthree">累计成功推荐1人（含）</td>
										<td class="wthree">2400</td>
										<td class="wthree">400</td>
										<td class="wthree">200</td>

									</tr>
									<tr>
										<td class="wthree">黄金会员</td>
										<td class="wthree">累计成功推荐2人以上（含）</td>
										<td class="wthree">2200</td>
										<td class="wthree">600</td>
										<td class="wthree">200</td>

									</tr>
									<tr>
										<td class="wthree">白金会员</td>
										<td class="wthree">累计成功推荐4人以上（含）</td>
										<td class="wthree">2000</td>
										<td class="wthree">800</td>
										<td class="wthree">200</td>

									</tr>

								</tbody>
							</table>
							<br/>
							
							<p>3、您可以赚取您下一级别的所有代理商的佣金差额。举例：比如A推荐B办理得200佣金，B如果再推荐C办理入户，A跟B都再各有200元佣金，以此类推，逐渐在你的下面形成一个营销团队。</p>
							<p>4、您和您推荐的会员之间的推荐关系永续不变，他推荐的每一笔业绩在三级分销系统佣金分配规则下您都有机会分成，如果您的推荐团队足够强大，您辛苦一段时间后，将有可能持续不断的产生被动收入，甚至实现财富自由。</p>
							<p>5、同级没有分润。</p>
							<p>6、您的佣金将在您推荐的客户成交后的2个工作日到账。</p>
							<p>7、若您想了解更详细的规则或有任何疑问，建议您向您的推荐人咨询。

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

		if ($("#name").val() == '' || !isUsername($("#name").val())) {
			alert('请填写真实姓名！');
			$("#name").focus();
			return false;
		}
		if ($("#phone").val() == '' || !isPhone($("#phone").val())) {
			alert('请填写真实手机号码！');
			$("#phone").focus();
			return false;
		} else {
			checkPhoneUniqueness($("#phone").val())

			if (!isPhoneValid) {
				return false;
			}
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
			url : "${contextPath}/o/member/isPhoneExist",
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