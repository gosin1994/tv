<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link href="${contextPath}/common/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${contextPath}/common/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/common/js/bootstrap-paginator.min.js"></script>



<%-- <div class="row-fluid">
	<div class="span12">
		<div class="dataTables_info" id="DataTables_Table_0_info">&nbsp;&nbsp;&nbsp;总数${page.totalRecord}  共${page.totalRecord}页</div>
	</div>
	<div class="span12">
		<div class="pagination">
			<ul>
				<li class="prev<c:if test='1==1'> disabled</c:if>"><a href="#">←</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li class="next"><a href="#">→</a></li>
			</ul>
		</div>
	</div>
</div> --%>
