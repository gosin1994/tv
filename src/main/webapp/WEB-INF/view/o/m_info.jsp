<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>会员信息</title>
<!-- end: Meta -->
<jsp:include page="../resource_link.jsp" flush="true" />
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			
			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span11">
				<div class="row-fluid sorprinter">
					<div class="box span12">
						<c:choose>
							<c:when test="${member != null}">
								姓名：${member.name}  &nbsp;&nbsp;&nbsp;电话：${member.phone}
								<br/>
								<br/>
								会员级别：<c:choose>
												<c:when test="${member.level==1}">
													会员
												</c:when>
												<c:when test="${member.level==2}">
													高级会员
												</c:when>
												<c:when test="${member.level==3}">
													黄金会员
												</c:when>
												<c:when test="${member.level==4}">
													白金会员
												</c:when>
												<c:when test="${member.level==5}">
													渠道商
												</c:when>
												<c:when test="${member.level==6}">
													高级代理商
												</c:when>
												<c:when test="${member.level==7}">
													高级合伙人
												</c:when>
											</c:choose>&nbsp;&nbsp;&nbsp;累计单数：${member.orderCount}&nbsp;&nbsp;&nbsp;累积佣金：${member.totalAmount}
								<br/>
								<br/>
								<br/>
								<div class="box-header" data-original-title>
									<h2>
										<i class="halflings-icon user"></i><span class="break"></span>个人佣金
									</h2>

									<div class="box-icon">
										<a href="#" class="btn-minimize"><i
											class="halflings-icon chevron-up"></i></a>
									</div>
								</div>


								
								
								<div class="box-content">
									<table class="table table-striped table-bordered ">
										<thead>
											<tr>
												<th>会员姓名</th>
												<th>佣金额度</th>
												<th>支付宝</th>
												<th>开户行</th>
												<th>开户人</th>
												<th>开户账号</th>
												<th>是否结清</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${commissions}" var="commission">
												<tr>

													<td class="center"><c:out
															value="${commission.memberName}" /></td>
													<td class="center"><c:out value="${commission.amount}" /></td>
													<td class="center"><c:out
															value="${commission.alipayNo}" /></td>
													<td class="center"><c:out
															value="${commission.bankName}" /></td>
													<td class="center"><c:out
															value="${commission.bankAccountName}" /></td>
													<td class="center"><c:out
															value="${commission.bankAccountNo}" /></td>

													<td class="center"><c:choose>
															<c:when test="${commission.state==1}">
													已结清
												</c:when>
															<c:otherwise>
													否
												</c:otherwise>
														</c:choose></td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</c:when>
							<c:otherwise>
								<h2>
									<span class="break"></span>信息有误，请返回重新输入
								</h2>
								<br />
								<a class="btn" href="javascript:history.back();">返回</a>
							</c:otherwise>
						</c:choose>


					</div>
					<!--/span-->

				</div>
				<!--/row-->
				<!-- end: Content -->
			</div>
			<!--/#content.span10-->
		</div>
		<!--/fluid-row-->

		<jsp:include page="/WEB-INF/view/bottom.jsp" flush="true" />

	</div>
	<!--/.fluid-container-->
</body>
</html>