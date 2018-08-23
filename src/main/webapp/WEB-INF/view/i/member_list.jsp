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
					   <li class="active"><a href="${contextPath}/i/member"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">会员列表</span>
						</a></li>
						<li ><a href="${contextPath}/i/member/hierarchy"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">会员层级</span>
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
								<i class="halflings-icon user"></i><span class="break"></span>会员列表
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" method="post"
								action="${pageContext.request.contextPath}/i/member" >
								<table width="100%">
									<tr>
										<td >会员姓名： <input name="name"
											class="input focused" id="name" type="text" maxlength="20"
											value="${query.name}"></td>
										<td >手机号： <input name="phone"
											class="input focused" id="phone" type="text" maxlength="20"
											value="${query.phone}"></td>
										<td align="right">
											<button type="submit" class="btn btn-primary">查询</button>
										</td>
									</tr>
								</table> 
							</form>
							<table class="table table-striped table-bordered ">
								<thead>
									<tr>
										<th>会员姓名</th>
										<th>电话</th>
										<th>累计成功单数</th>
										<th>会员级别</th>
										<th>累计佣金</th>
										<th>支付宝</th>
										<th>开户行</th>
										<th>开户人</th>
										<th>开户账号</th>
										<th>直接上级</th>
										<th>顶级会员</th>
										<th>申请时间</th>
										<th>二维码</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${members}" var="member">
										<tr>
											
											<td class="center"><c:out value="${member.name}" /></td>
											<td class="center"><c:out value="${member.phone}" /></td>
											<td class="center"><c:out value="${member.orderCount}" /></td>
											<td class="center">
											<c:choose>
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
											</c:choose>
							 					</td>
							 				<td class="center"><c:out value="${member.totalAmount}" /></td>
							 				<td class="center"><c:out value="${member.alipayNo}" /></td>
											<td class="center"><c:out value="${member.bankName}" /></td>
											<td class="center"><c:out value="${member.bankAccountName}" /></td>
											<td class="center"><c:out value="${member.bankAccountNo}" /></td>
											<td class="center"><c:out value="${member.pidName}" /></td>
											<td class="center"><c:out value="${member.rootMemberName}" /></td>
											<td class="center"><fmt:formatDate value="${member.createTime}" type="both" /></td>
											<td class="center"><a target="blank" href="${member.qrcodeUrl}"><img width="80" height="80" src="${member.qrcodeUrl}"/></a></td>
											<td>
											<c:if test="${sessionScope.user.isAdmin=='1'}">
											<a class="btn btn-info"
												href="${contextPath}/i/member/${member.id}">修改</a>
											</c:if>
												<a class="btn btn-info" target="_blank"
											href="${contextPath}/i/member/${member.id}/commissions"  >佣金明细</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="row-fluid">
							<div class="span12">
								<div class="dataTables_info" id="DataTables_Table_0_info">总数${page.totalRecord}  共${page.totalPage}页</div>
							</div>
							<div id="page"></div>
							</div>
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


	</div>
	<!--/.fluid-container-->
</body>
</html>
<script type="text/javascript">
$(function(){
	initPage();
});
function initPage() {
	var options = {
		currentPage : "${page.pageNo}",
		totalPages : "${page.totalPage}",
		numberOfPages : 5,
		pageUrl : function(type, page, current) {
			return "${contextPath}/i/member?pageNo=" + page
					+"&name=${query.name}&phone=${query.phone}";
		}
	}
	$("#page").bootstrapPaginator(options);
}


  
   
</script>