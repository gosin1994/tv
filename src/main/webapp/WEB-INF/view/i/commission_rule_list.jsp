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
								<i class="halflings-icon user"></i><span class="break"></span>佣金设置
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<br />
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>会员级别</th>
										<th>佣金额度</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${commissionRules}" var="commissionRule">
										<tr>
											
											<td class="center">
											<c:choose>
												<c:when test="${commissionRule.level==1}">
													会员（注册即可）
												</c:when>
												<c:when test="${commissionRule.level==2}">
													高级会员（成功推荐1人）
												</c:when>
												<c:when test="${commissionRule.level==3}">
													黄金会员（成功推荐2~3人）
												</c:when>
												<c:when test="${commissionRule.level==4}">
													白金会员（成功推荐4~7人）
												</c:when>
												<c:when test="${commissionRule.level==5}">
													渠道商（成功推荐8~14人）
												</c:when>
												<c:when test="${commissionRule.level==6}">
													高级代理商（成功推荐15~19人）
												</c:when>
												<c:when test="${commissionRule.level==7}">
													高级合伙人（成功推荐20人以上）
												</c:when>
											</c:choose>
											</td>
											<td class="center"><c:out value="${commissionRule.amount}" /></td>
											
											
											<td><a class="btn btn-info"
												href="${contextPath}/i/commission/rule/${commissionRule.level}">修改</a>
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