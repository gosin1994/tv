<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						<li><a href="${contextPath}/i/commission"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">佣金列表</span>
						</a></li>
						<li class="active"><a href="${contextPath}/i/commission/rule"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">佣金设置</span>
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
							<h2>
										<i class="halflings-icon edit"></i><span class="break"></span>佣金设置
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" method="post"
								action="${contextPath}/i/commission/rule/${commissionRule.level}"
								onsubmit="return validate()">
								<fieldset>
								
									<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 会员级别：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="level" class="input-xlarge focused" id="level" maxlength="10" type="text" readonly value="${commissionRule.level}"></td>
											<td align="left">&nbsp;<span id="nameMsg" style="color:red"></span></td>
											</tr></printer>
										</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label" for="focusedInput"><span style="color:red">*</span> 佣金：</label>
										<div class="controls">
											<printer><tr>
											<td><input name="amount" class="input-xlarge focused" id="amount" maxlength="10" type="text"  value="${commissionRule.amount}"></td>
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





function validate() {
	var isPass = true;
	
	return isPass;
	 
};






</script>
</html>