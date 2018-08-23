<!--
	author：龚鑫
	  date：2018-08-17 14:23  
	 email：gx1008666@163.com
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- start: Meta -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon">
<script type="text/javascript">
//弹出隐藏层
function ShowDiv(show_div,bg_div,hiddenId,applyId){
	document.getElementById(show_div).style.display='block';
	document.getElementById(bg_div).style.display='block' ;
	/*给hidden的value赋值*/
	document.getElementById(hiddenId).value=applyId;
	
	var bgdiv = document.getElementById(bg_div);
	bgdiv.style.width = document.body.scrollWidth;
	// bgdiv.style.height = $(document).height();
	$("#"+bg_div).height($(document).height());
};
//关闭弹出层
function CloseDiv(show_div,bg_div){
	document.getElementById(show_div).style.display='none';
	document.getElementById(bg_div).style.display='none';
};
//查询备注

function showRemark(applyId) {
	var tbody=window.document.getElementById("tbody-result");
	        $.ajax({
	            type: "post",
			    dataType: "json",
			    url: "${pageContext.request.contextPath}/i/eduRemark/selectRemark?applyId="+applyId,
			    data: {
			        'applyId': applyId,
			    },
			    success: function (json) {
			        if (json) {
			            var str = "";
			
			            for (i in json) {
			                str += "<tr>" +
			                "<td>" + json[i].date + "</td>" +
			                "<td>" + json[i].remark + "</td>" +
			                "<td>" + json[i].operator + "</td>" +
			                "</tr>";
			            }
			            tbody.innerHTML = str;
			        }
			    },
			    error: function () {
			        alert("查询失败")
			    }
	});
}

</script>
<title>后台-学历申请</title>
<!-- 网页添加logo -->
<link rel="shortcut icon" href="${contextPath}/img/o/favicon.ico" type="image/x-icon"> 
<style>
	/*客户跟进表*/
	.black_overlay{
display: none;
position: absolute;
top: 0%;
left: 0%;
width: 100%;
height: 100%;
background-color: black;
z-index:1001;
-moz-opacity: 0.8;
opacity:.80;
filter: alpha(opacity=80);
}
.white_content {
display: none;
position: absolute;
top: 10%;
left: 15%;
width: 70%;
height: 70%;
border: 3px solid rosybrown;
background-color: white;
z-index:1002;
overflow: auto;
}
/*表格*/
.record{
	width:100%;
	border:2px;
	border-spacing:0;
}

#MyDiv{
	align-content: center;

}
</style>
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
					   <li class="active">
					   <a href="${contextPath}/i/apply2"> 
					   <i class="fa-icon-bar-chart"></i><span class="hidden-tablet">学历申请</span>
						</a>
					   </li>
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
								<i class="halflings-icon user"></i><span class="break"></span>学历申请
							</h2>

							<div class="box-icon">
								<a href="#" class="btn-minimize"><i
									class="halflings-icon chevron-up"></i></a>
							</div>
						</div>
						<div class="box-content">
							<form class="form-horizontal" method="post"
								action="${pageContext.request.contextPath}/i/apply2" >
								<table width="100%">
									<tr>
										<td >客户姓名： <input name="name"
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
										<th>客户姓名</th>
										<th>客户电话</th>
										<th>当前学历</th>
										<th>报考学历</th>
										<th>年龄</th>
										<!--<th>社保年限</th>-->
										<th>是否为盟会员</th>
										<th>推荐人</th>
										<th>顶层会员</th>
										<th>申请时间</th>
										<th>是否签单</th>
										<th class="center">操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${applies2}" var="apply">
										<tr>
											
											<td class="center"><c:out value="${apply.name}" /></td>
											<td class="center"><c:out value="${apply.phone}" /></td>
											<td class="center">
												<!--当前学历-->
											<c:choose>
												<c:when test="${apply.educationLevel==1}">
													初中及以下
												</c:when>
												<c:when test="${apply.educationLevel==2}">
													高中/中专
												</c:when>
												<c:when test="${apply.educationLevel==3}">
													大专
												</c:when>
												<c:when test="${apply.educationLevel==4}">
													本科及以上
												</c:when>
											</c:choose>
											</td>
												<!--报考学历-->
											<td class="center">
											<c:choose>
												<c:when test="${apply.enterEducationLevel==1}">
													本科
												</c:when>
												<c:when test="${apply.enterEducationLevel==2}">
													专科
												</c:when>
												<c:when test="${apply.enterEducationLevel==3}">
													硕士及以上
												</c:when>
												
											</c:choose>
											</td>
											
											<!--年龄-->
											<td class="center">
											<c:choose>
												<c:when test="${apply.age==1}">
													25岁以下
												</c:when>
												<c:when test="${apply.age==2}">
													25-30岁
												</c:when>
												<c:when test="${apply.age==3}">
													30-40岁
												</c:when>
												<c:when test="${apply.age==4}">
													40岁以上
												</c:when>
												<c:otherwise>   
												    ${apply.age} 
												</c:otherwise> 
											</c:choose>
											</td>
											<!--年龄结束-->
											<!--<td class="center"><c:out value="${apply.age}" /></td>-->
											<td class="center">
											<c:choose>
												<c:when test="${apply.isMember==1}">
													是
												</c:when>
												<c:otherwise>
													否
												</c:otherwise>
											</c:choose>
											</td>
											<td class="center"><c:out value="${apply.memberName}" /></td>
											<td class="center"><c:out value="${apply.rootMemberName}" /></td>
											<td class="center"><fmt:formatDate
													value="${apply.createTime}" type="both" /></td>
											<td class="center">
											<c:choose>
												<c:when test="${apply.state==1}">
													已签单
												</c:when>
												<c:otherwise>
													否
												</c:otherwise>
											</c:choose>
											</td>
											
											<td>
											<c:choose>
												<c:when test="${apply.state==1}">
												</c:when>
												<c:otherwise>
													<a class="btn btn-info"
											href="javascript:void(0);" onclick="sign(${apply.id})" >签单</a>
											<input class="btn btn-info" id="Button1" type="button" value="备注" 
												onclick="ShowDiv('MyDiv','fade','hiddenId',${apply.id});showRemark(${apply.id})" />
												</c:otherwise>
											</c:choose>
											
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

		<jsp:include page="../bottom.jsp" flush="true" />

	</div>
	
	
	<!--=====================客户跟进表=========================-->
<!--弹出层时背景层DIV-->
<div id="fade" class="black_overlay">
</div>
<div  style="position:fixed" id="MyDiv" class="white_content">
<div style="text-align: right; cursor: default; height: 40px;" id="move">
<span style="font-size: 16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
</div>

<!--============表格开始============-->
	<center>
		<h2>客户跟进表</h2>
	<table class="record" border="1px">
		<thead>
			<tr align="center">
				<td width="18%">日期</td>	
				<td width="60%">备注</td>	
				<td width="18%">经办人</td>	
			</tr>
		</thead>
	    <tbody id="tbody-result">
        </tbody>
		
	</table>
	<br />
	<!--form表单开始-->
	<form class="form-horizontal" method="post"
		action="${pageContext.request.contextPath}/i/eduRemark"
		onSubmit="return beforeSubmit(this);" >
	<input id="hiddenId" type="hidden" name="applyId" value="" />
	<table class="record" border="1px">
		<tr align="center">
			<td width="59%">
				<input placeholder="请输入本次跟进信息"  style="width:90%;height: 20px;" name="remarkMsg" id="remark" type="text" value="">
			</td>	
			<td width="19%">
				<input placeholder="请输入您的姓名" style="height: 20px;" name="operator" id="operator" type="text" maxlength="5"value="">
			</td>	
			<td align="right" style="border: 0px;" width="20%">
				<button  type="submit" class="btn btn-primary">保存</button>
			</td>	
		</tr>
		
	</table>
	</form>
	<!--form表单结束-->
	
	</center>
	
	
<!--============表格结束============-->

</div>
	
	
	
	<!--=====================客户跟进表结束=========================-->
	<!--/.fluid-container-->
	
	
	
	
</body>
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
			return "${contextPath}/i/apply2?pageNo=" + page
					+"&state=${query.state}&rootMemberId=${query.rootMemberId}";
		}
	}
	$("#page").bootstrapPaginator(options);
}

    function sign(id) {
    	if(confirm("确定已经签订合同并已收款吗？")){
    		location.href="${contextPath}/i/apply2/sign?id="+id;
    		
    	}
    }
    
  
    /*备注提交前校验*/
function beforeSubmit(form) {

		if ($("#remark").val() == '' ) {
			alert('请填写跟进信息信息！');
			$("#remark").focus();
			return false;
		}
		
		if ($("#operator").val() == '' || $("#operator").val() == '请输入姓名'
				|| !isUsername($("#operator").val())) {
			alert('请填写您的姓名！');
			$("#operator").focus();
			return false;
		}
		

		return true;
	}
   
</script>



</html>

