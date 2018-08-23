<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Expires" CONTENT="-1">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache">
<link href="${contextPath}/css/h5_member/ectouch.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/css/h5_member/style.css" rel="stylesheet" type="text/css" />
<link href="${contextPath}/font/h5_member/iconfont.css" rel="stylesheet" type="text/css" />
<script src="${contextPath}/js/h5_member/TouchSlide.1.1.source.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/common_js.js" type="text/javascript"></script>
<script src="${contextPath}/js/h5_member/jquery.reveal.js" type="text/javascript"></script>
<title>会员中心</title>
<style>
	
	/*佣金表样式*/
 .comments {
 	background: white;
 }
 .comments table,th{
 	border: 2px;
 	background: white;
 	text-align: center;
 	
 }
 
 
 /*佣金表样式结束*/
  
	
</style>
</head>

<body>
<div class="Layout_style">
 <header id="header">
  <div class="header_l header_return"><a href="#" class="iconfont icon-back"></a></div>
  <h1> 会员中心 </h1>
  <div class="header_r"><a  href="${contextPath}/o/member/logout">退出登录 </a> </div>
  <!--<div class="header_r"><a class="iconfont icon-unie668" href="${contextPath}/o/member/logout">退出登录 </a> </div>-->
</header>
  <dl class="user_top">
  <dt><a target="blank" href="${member.qrcodeUrl}"><img  width="80" height="80" src="${member.qrcodeUrl}"/></a></dt>
  <dd class="Balance">${member.name}  </dd>
</dl>
 <div class="user_center">
  
<div class="Distribution_M">
   <div class="title_name">分销管理</div>
   <ul class="Menu_list">
     <li><a href="javascript:void(0);" onclick="showInfo()"><img src="${contextPath}/img/h5_member/icon_users_05.png" /><h5>会员信息</h5></a></li>
     <li><a href="${contextPath}/o/member/${member.id}/commissions"><img src="${contextPath}/img/h5_member/icon_users_06.png" /><h5>我的佣金</h5></a></li>
     <li><a href="${contextPath}/o/member/${member.id}/hierarchy"><img src="${contextPath}/img/h5_member/icon_users_07.png" /><h5>我的推荐</h5></a></li>
     <li><a href="javascript:void(0);" onclick="showRule()"><img src="${contextPath}/img/h5_member/icon_users_08.png" /><h5>佣金规则</h5></a></li>
    </ul>
  </div>
  <div class="menu_Manager clearfix" id="user_info">
   <br/>
   <br/>
   当前级别：
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
											</c:choose>&nbsp;&nbsp;&nbsp;
											<br/><br/>累计单数：${member.orderCount}&nbsp;&nbsp;&nbsp;
											<br/><br/>累积佣金：${member.totalAmount}
   <br/>
   <br/>
   <br/>
  </div>
  
  
   <!--================奖励金说明===========================-->
   <br />
   <div class="comments">
	    <h3 style="text-align: center;">奖励金赚取规则：</h3>
		<p>1、您注册成为会员后，可以自己办理入户，也可以推荐别人成为会员。推荐成功入户累计达到相应的数量，可以升级到相应的级别。例如，推荐成功1人可升级到高级会员，并获得此级别奖励金200元。</p>
		<p>2、您推荐的会员如果也推荐他的朋友入户，您也有机会获得奖励金。您推荐的越多，您的会员级别越高，所能赚取的单笔奖励金越高。奖励金表如下：</p>
		<table border="1px" class="table table-bordered agileinfo">
			<thead>
				<tr>
					<td colspan=5>会员推荐用户奖励表</td>
				</tr>
				<tr >
					<td>级别</td>
					<td>升级条件</td>
					<td>直接奖励金</td>
					<td>间接奖励金</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="wthree">会员</td>
					<td class="wthree">提交个人资料注册即可</td>
					<td class="wthree">200</td>
					<td class="wthree">0</td>
		
				</tr>
				<tr>
					<td class="wthree">高级会员</td>
					<td class="wthree">累计成功推荐1人（含）</td>
					<td class="wthree">400</td>
					<td class="wthree">200</td>
		
				</tr>
				<tr>
					<td class="wthree">黄金会员</td>
					<td class="wthree">累计成功推荐2人以上（含）</td>
					<td class="wthree">600</td>
					<td class="wthree">200</td>
		
				</tr>
				<!--<tr>
					<td class="wthree">白金会员</td>
					<td class="wthree">累计成功推荐4人以上（含）</td>
					<td class="wthree">800</td>
					<td class="wthree">200</td>
		
				</tr>-->
		
			</tbody>
		</table>
		<br/>
		
		<p>3、您可以赚取您下一级别的所有代理商的奖励金差额。举例：比如A推荐B办理得200元奖励金，B如果再推荐C办理入户，A跟B都再各有200元奖励金，以此类推，逐渐在你的下面形成一个营销团队。</p>
		<p>4、您和您推荐的会员之间的推荐关系永续不变，他推荐的每一笔业绩在三级分销系统奖励金分配规则下您都有机会分成，如果您的推荐团队足够强大，您辛苦一段时间后，将有可能持续不断的产生被动收入，甚至实现财富自由。</p>
		<p>5、同级没有分润。</p>
		<p>6、您的奖励金将在您推荐的客户成交后的2个工作日到账。</p>
		<p>7、若您想了解更详细的规则或有任何疑问，建议您向您的推荐人咨询。
	</div>							
   <!--================奖励金说明结束===========================-->
   
  
  
  
 </div>
  <!--底部样式-->
<div class="footer">
	<!--
  <div class="Copyright">
   Copyright © 2018 All rights reserved 捷通   | 粤ICP备17111325号-2
  </div>
 -->
</div>
</div>
 <!--固定栏目样式-->

      <script src="${contextPath}/js/h5_member/zepto.min.js" type="text/javascript"></script>
   <script type="text/javascript">
   
   
   $(function() {
	   showInfo();
	});

   function showInfo(){
	   $('#user_info').show();
	   $('#commission_rule').hide();
   }   
   
   
   function showRule(){
	   $('#user_info').hide();
	   $('#commission_rule').show();
   }
   
   
   
Zepto(function($){
   var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
   //点击箭头，显示隐藏导航
   $btnLogo.on('click',function(){
     if($btnLogo.parent().hasClass('global-nav--current')){
       navHide();
     }else{
       navShow();
     }
   });
   var navShow = function(){
     $nav.addClass('global-nav--current');
   }
   var navHide = function(){
     $nav.removeClass('global-nav--current');
   }
   
})
function get_search_box(){
	try{
		document.getElementById('get_search_box').click();
	}catch(err){
		document.getElementById('keywordfoot').focus();
 	}
}
</script>
</div>
</body>
</html>
