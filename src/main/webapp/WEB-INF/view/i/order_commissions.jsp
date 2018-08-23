<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<title>后台</title>
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
					   <li class="active"><a href="${contextPath}/i/order"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">订单列表</span>
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
								<i class="halflings-icon user"></i><span class="break"></span>佣金列表
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<a class="btn btn-success"
											href="javascript:history.back();">返回</a>
							<br /><br />
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>客户姓名</th>
										<th>会员姓名</th>
										<th>佣金</th>
										<th>支付宝</th>
										<th>开户行</th>
										<th>开户人</th>
										<th>开户账号</th>
										<th>生成时间</th>
										<th>是否结清</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${commissions}" var="commission">
										<tr>
											
											<td class="center"><c:out value="${commission.customerName}" /></td>
											<td class="center"><c:out value="${commission.memberName}" /></td>
											<td class="center"><c:out value="${commission.amount}" /></td>
											<td class="center"><c:out value="${commission.alipayNo}" /></td>
											<td class="center"><c:out value="${commission.bankName}" /></td>
											<td class="center"><c:out value="${commission.bankAccountName}" /></td>
											<td class="center"><c:out value="${commission.bankAccountNo}" /></td>
											<td class="center"><fmt:formatDate
													value="${commission.createTime}" type="both" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${commission.state==1}">
													已结清
												</c:when>
												<c:otherwise>
													否
												</c:otherwise>
											</c:choose>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
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

</html>