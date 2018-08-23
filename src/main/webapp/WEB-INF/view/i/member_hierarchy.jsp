<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <title>后台</title>
    <link href="${contextPath}/css/3.0/bootstrap.css" rel="stylesheet">
    <!-- 网页添加logo -->
	<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
    <jsp:include page="../resource_link.jsp" flush="true" />
  </head>
  <body>
  <jsp:include page="../top.jsp" flush="true" />
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
					   <li ><a href="${contextPath}/i/member"> <i
								class="fa-icon-bar-chart"></i><span class="hidden-tablet">会员列表</span>
						</a></li>
						<li class="active"><a href="${contextPath}/i/member/hierarchy"> <i
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
						<div class="box-content">
							
							<div id="memberTree" ></div>
							<br/><br/>
							<div id="commissionDiv">
							&nbsp;&nbsp;&nbsp;注：点击会员可查看佣金明细
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
    <script src="${contextPath}/js/3.0/jquery.js"></script>
  	<script src="${contextPath}/js/3.0/bootstrap-treeview.js"></script>
  	<script type="text/javascript">

  		$(function() {
  		

        var memberData = '${memberData}';
        
       

        $('#memberTree').treeview({
          levels: 99,
          //color: "#428bca",
          expandIcon: 'glyphicon glyphicon-chevron-right',
          collapseIcon: 'glyphicon glyphicon-chevron-down',
          nodeIcon: 'glyphicon glyphicon-user',
          data: memberData,
          onNodeSelected: function (event, node) {
              $("#commissionTitle").html(node.id+" " +node.text);
              window.open("${contextPath}/i/member/"+node.id+"/commissions");
            }
        });




       
  		});
  		
  	</script>
  </body>
</html>