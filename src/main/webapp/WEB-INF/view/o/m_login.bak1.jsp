<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员信息</title>
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- end: Mobile Specific -->


<style type="text/css">
body {
	background: url(${contextPath}/img/bg-login.jpg) !important;
}
</style>


<jsp:include page="/WEB-INF/view/resource_link.jsp" flush="true" />
</head>

<body onload="init();">

	<div class="container-fluid">
		<div class="row-fluid">

			<div class="row-fluid">
				<br/><br/><br/><br/><br/><br/><br/><br/>
				<div class="login-box">
					<div class="icons">
						<a href="#"><i class="halflings-icon home"></i></a>
					</div>
					<h1>&nbsp;&nbsp;会员登录</h1>
					<form class="form-horizontal"
						action="${contextPath}/o/member/info"
						method="post" onsubmit="return verify();">
						<fieldset>
							<div class="input-prepend" title="姓名">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" name="name" id="name"
									type="text" placeholder="姓名" />
							</div>
							<div class="input-prepend" title="手机号">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" name="phone" id="phone"
									type="text" placeholder="手机号" />
							</div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="message" style="color:red"></span>
							<div class="button-login">
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
							<div class="clearfix"></div>
						</fieldset>
					</form>
					<hr>
				</div>
				<!--/span-->
			</div>
			<!--/row-->

		</div>
		<!--/fluid-row-->

	</div>
	<!--/.fluid-container-->

<script>
	
	
	function verify() {
		
		return true;
	}
</script>

</body>
</html>
