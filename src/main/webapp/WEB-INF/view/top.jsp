<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#"><span>后台</span><span style="font-size:14px">&nbsp;&nbsp;&nbsp;&nbsp;
				</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/apply">
								入户申请
							</a>
						</li>
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/apply2">
								学历申请
							</a>
						</li>
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/commission">
								佣金管理
							</a>
						</li>
						
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/member">
								会员管理
							</a>
						</li>
						<c:if test="${sessionScope.user.isAdmin=='1'}">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/order">
								订单管理
							</a>
						</li>
						</c:if>
						<c:if test="${sessionScope.user.isAdmin=='1'}">
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" href="${contextPath}/i/user">
								用户管理
							</a>
						</li>
						</c:if>
						<!-- end: Notifications Dropdown -->
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> ${sessionScope.user.name}
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
							<%-- <li><a href="${contextPath}/merchant/account/confAccountPage.do"><i class="halflings-icon white user"></i>我的账号</a></li> --%>
								<li><a href="${contextPath}/logout"><i class="halflings-icon white off"></i>退出</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- end: Header -->
