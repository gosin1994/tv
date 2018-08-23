<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<title>商户后台</title>
<!-- end: Meta -->
<jsp:include page="../resource_link.jsp" flush="true" />
</head>
<body>
	<jsp:include page="../top.jsp" flush="true" />
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="active"><a href="${contextPath}/i/user"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">用户列表</span>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span11">
				<div class="row-fluid sorprinter">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<c:choose>
								<c:when test="${editUser.id != null}">
									<h2>
										<i class="halflings-icon edit"></i><span class="break"></span>用户编辑
									</h2>
								</c:when>
								<c:otherwise>
									<h2>
										<i class="halflings-icon edit"></i><span class="break"></span>用户新增
									</h2>
								</c:otherwise>
							</c:choose>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" method="post"
								action="${contextPath}/i/user/<c:choose><c:when test='editUser.id != null'>${editUser.id}</c:when><c:otherwise>0</c:otherwise></c:choose>"
								onsubmit="return validate()">
								<input type="hidden" name="id" value="${editUser.id}" />
								<fieldset>
								<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 账户：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="username" class="input-xlarge focused" id="username" maxlength="10" type="text"  value="${editUser.username}"></td>
											<td align="left">&nbsp;<span id="nameMsg" style="color:red"></span></td>
											</tr></printer>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 姓名：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="name" class="input-xlarge focused" id="name" maxlength="10" type="text"  value="${editUser.name}"></td>
											<td align="left">&nbsp;<span id="nameMsg" style="color:red"></span></td>
											</tr></printer>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 电话：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="phone" class="input-xlarge focused" id="phone" maxlength="11" type="text"  value="${editUser.phone}"></td>
											<td align="left">&nbsp;<span id="nameMsg" style="color:red"></span></td>
											</tr></printer>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 密码：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="password" class="input-xlarge focused" id="password" maxlength="20" type="password"  value="${editUser.password}"></td>
											<td align="left">&nbsp;<span id="nameMsg" style="color:red"></span></td>
											</tr></printer>
										</div>
									</div>
									
									
									<div class="form-actions">
										<button type="submit" class="btn btn-primary">确定</button>
										<a class="btn" href="javascript:history.back();">取消</a>
									</div>
								</fieldset>
							</form>

						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->

				<!-- end: Content -->
			</div>
			<!--/#content.span10-->
		</div>
		<!--/fluid-row-->

		<jsp:include page="../bottom.jsp" flush="true" />

	</div>
	<!--/.fluid-container-->
</body>
<script type="text/javascript">


</script>
</html>