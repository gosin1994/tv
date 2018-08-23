<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <title>我的下线</title>
    <link href="${contextPath}/css/3.0/bootstrap.css" rel="stylesheet">
    <jsp:include page="../resource_link.jsp" flush="true" />
  </head>
 <body>
	<div class="container-fluid">
		<div class="row-fluid">
			<!-- start: Main Menu -->
			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span11">
				<div class="row-fluid sorprinter">
					<div class="box span12">
						<div class="box-header" data-original-title>
							<h2>
							</h2>

						</div>
						<div class="box-content">
						<br /><br />
							<a class="btn btn-success"
											href="javascript:history.back();">返回</a>
							<br />
							<br />
							<br />
							<div id="memberTree" ></div>
							<br/><br/>
							<div id="commissionDiv">
							&nbsp;&nbsp;&nbsp;注：显示格式为：姓名 会员级别（累计单数, 累计佣金），点击可查看下线佣金明细
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
              window.open("${contextPath}/o/member/"+node.id+"/commissions");
            }
        });




       
  		});
  		
  	</script>
  </body>
</html>