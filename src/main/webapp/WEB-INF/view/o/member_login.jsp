<!--
	author：龚鑫
	github：https://github.com/gosin1994
	  date：2018-08-07 14:19 
	 email：gx1008666@163.com
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!doctype html>
<html>
 <head> 
  <meta charset="utf-8"> 
  <meta name="pathname" content="bytecom_tetris"> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui"> 
  <!--原来的css开始-->
  <!--font-awsome-css-->
<link rel="stylesheet" href="${contextPath}/css/h5/font-awesome.min.css">
<!--bootstrap-->
<link href="${contextPath}/css/h5/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<!--custom css-->
<link href="${contextPath}/css/h5/style.css" rel="stylesheet"
	type="text/css" />
	<!--新建css样式-->
<link href="${contextPath}/css/h5/style2.css" rel="stylesheet"
	type="text/css" />
<!--component-css-->
<script src="${contextPath}/js/h5/jquery-2.1.4.min.js"></script>
<!--script-->
<script src="${contextPath}/js/h5/modernizr.custom.js"></script>
<script src="${contextPath}/js/h5/bigSlide.js"></script>
<script>
	$(document).ready(function() {
		$('.menu-link').bigSlide();
	});
</script>
<!-- web-fonts -->
<link href='http://fonts.googleapis.com/css?family=Abril+Fatface'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
  <!--原来的css结束-->
  <!--logo-->
  <!--<link rel="icon" href="https://ad.toutiao.com/favicon.ico" type="image/x-icon">--> 
  <style type="text/css">@charset "utf-8";html{height:100%;color:#000;overflow-y:scroll;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif;background-color:#FFF}html *{outline:0;-webkit-text-size-adjust:none;-webkit-tap-highlight-color:rgba(0,0,0,0);box-sizing:border-box;margin:0;padding:0}html input{font-family:Arial,Helvetica,'Hiragino Sans GB','Microsoft YaHei',sans-serif}table{border-collapse:collapse;border-spacing:0}fieldset,img{border:0}del{text-decoration:line-through}address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:500}ol,ul{list-style:none}caption,th{text-align:left}a:hover{text-decoration:underline}ins,a{text-decoration:none}html,body{width:100%}body{min-height:100%;line-height:1.5}#content{width:100%;margin:0 auto}.piece{width:100%;background-color:transparent;position:relative;box-sizing:border-box}.piece.fbottom,.piece.ftop{position:fixed!important;width:100%!important;z-index:10!important}.create-left-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;left:0}.create-right-content{width:1.867rem;height:auto;text-align:center;z-index:9999;position:fixed;bottom:0;right:0}.piece.fbottom{top:auto!important;bottom:0!important}.piece.ftop{top:0!important;bottom:auto!important}#content{min-height:100%;position:relative;overflow:hidden}#MEIQIA-PANEL-HOLDER{right:0!important}html::-webkit-scrollbar{display:none}.hide{display:none!important}</style> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/swiper_302abfc.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/ledfont_ccb326d.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/daymode_1ae66db.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/notice_7471b49.css"> 
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/bricks/bricks-common_9b66357.css"> 
  <script id="globalvar">
        GLOBAL_VAR = JSON.parse('{"siteId":"1590548427500557","pageIds":[1590548427500557],"pageid_map":{"506793":1590548427500557},"shareTitle":"诚士教育积分入户咨询","name":"积分入户2","shareDesc":"你关心的，才是头条！","shareThumb":"","adId":"0"}');
        componentsConfig = {
            PanoramaList: []
        }
    </script> 
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/vendor_41f269e.js"></script>
  <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
  <script src="https://s3.pstatp.com/bytecom/resource/vue/lib/main_5fdef5d.js"></script>
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brand_5a9c6d0.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/iconfont_03f5f23.css">
  <link rel="stylesheet" type="text/css" href="https://s3.pstatp.com/bytecom/resource/vue/lib/brickicon_2e09b13.css"> 
  <!-- 替换为Vue模板语法 --> 
  <title>会员中心</title> 
  <script>
            !function(){"use strict";!function(t,e){var r=t.seed=t.seed||[];if(r.start=+new Date,!r.initialize&&!r.invoked){r.invoked=!0,r.methods=["track","page","on","once"],r.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);return e.unshift(t),r.push(e),r}};for(var n=0;n<r.methods.length;n++){var a=r.methods[n];r[a]=r.factory(a)}r.load=function(){var t=e.createElement("script");t.type="text/javascript",t.async=!0,t.src="//s3.pstatp.com/bytecom/resource/tetris/insight/v0.1.4-beta/analytics.js";var r=e.getElementsByTagName("script")[0];r.parentNode.insertBefore(t,r)},r.SNIPPET_VERSION="1.1.8",r.load()}}(window,document)}();
            </script> 
  <style>
  	.clearfix::after{display:block;content:"";clear:both}
 
 
 /*分割线*/
.demo_line_05{
    letter-spacing: -1px;
    color: 	#DCDCDC;
}
.demo_line_05 span{
    letter-spacing: 0;
    color: #222;
    margin:0 auto;
}
/*分割线结束*/

/*滚动logo*/
.picutre_many img{width:170px; height:150px;}
/*滚动logo结束*/



/*会员注册成功样式*/
.m_sccess{
	width: 96%;
	margin: 0 auto;
}
/*会员注册成功样式*/


/*超链接颜色*/
/*a:link {color: #F0F0F0} *//* 未访问的链接 */
/*a:visited {color: #00FF00}*/ /* 已访问的链接 */
a:hover {color: #FF00FF} /* 鼠标移动到链接上 */
a:hover {text-decoration: none;}
/*a:active {color: #0000FF}*/ /* 选定的链接 */
/*超链接颜色结束*/
/*悬浮会员中心，拨打电话*/
.mem_btn{
	text-align: center;
	background-color:#F1F5FA; 
	width:100%; height:2.0em; 
	margin:0 auto; 
	overflow:hidden;
	position: fixed; 
	bottom:0;
}
/*悬浮会员中心，拨打电话*/
/*输入框的样式*/
.input_total{
	margin: 0 auto;
}
.input{
	border: 1px solid #009ADA; 
	width: 70%;
	height: 30px;
	border-radius:12px;	
}
/*输入框的样式结束*/
/*登录按钮样式*/
.banner_tb{
	width: 70%;
	height: 30px;
	text-align: center;
}
td{
	background-color:#009ADA;
	border-radius: 12px;
}
.submit{
	width: 70%;
	height: 33px;
	border: none;
	color: white;
	background-color:#009ADA;
	border-radius: 12px;
}

/*登录按钮样式结束*/
/*logo样式*/
.img {
	width: 50%;
	height: 50%;
}


/*logo样式结束*/
/*顶部标题样式*/
.top_name{
	height: 30px;
	 line-height: 15px;
	background-color:#009ADA;
	color: white;	
	text-align: center;
}
/*顶部标题样式结束*/

  </style> 
  <script>
            !function(){  try{window.addEventListener("DOMContentLoaded",function(){document.querySelectorAll(".form-tel-autofillbtn").forEach(function(ele){ele.parentElement.remove()})})}catch(e){};  }();
            </script> 
 </head> 
 <body id="body" style="background-size: 100% 100%;background-position-x: initial;background-position-y: initial;background-repeat-x: no-repeat;background-repeat-y: no-repeat;background-color: #ffffff"> 
  <script type="text/javascript">
  	!function(e){function t(){var e=d.getBoundingClientRect().width;u=e/10,d.style.fontSize=u+"px"}function n(){o.body&&(o.body.style.fontSize=14/(i/10)+"rem")}var i=375,o=e.document,d=o.documentElement,c=d.getBoundingClientRect().width,u=(window.devicePixelRatio||1,c/10),l=null;e.addEventListener("resize",function(){clearTimeout(l),l=setTimeout(t,300)},!1),n(),"complete"===o.readyState?n():o.addEventListener("DOMContentLoaded",function(){n()},!1),t()}(window);
  
  $("button2").click(function(){
  	window.location.href="www.baidu.com"
  })
  
  </script>
  <div id="csrf">
   <input type="hidden" name="csrfmiddlewaretoken" value="lWF7ngC1yaKMZ2bXdZqVYNEc2h1cutzY">
  </div> 
  <main data-server-rendered="true">
   <span></span>
   <section id="frame-9" class="brick-frame brick-frame-server" style="padding-top:0;padding-bottom:0;padding-left:0;padding-right:0;">
   </section>
   
   <!--===================顶部标题=========================-->
   <div class="top_name">
   		 <h5> 会员登录 </h5>	
   </div>
   
   
   <!--================顶部标题结束============================-->
   
   <!--===============logo位置=========================-->
   <!--<div >
   		<center>
   			<img class="img" src="${contextPath}/img/background/logo2.png"/>
 		</center>
   </div>-->
   <br /> <br />
   <!--=============logo位置结束=========================-->
   
   <!--===============登录界面==================-->
   
   <form class="form-horizontal"
		action="${contextPath}/o/member/login"
		method="post" onsubmit="return verify();">
   
	    <div class="input_total">
			<center>
			<!--姓名-->
			<label><em class="name_icon"></em></label>
				<input placeholder=" 请输入姓名" name="name" type="text"   class="input"/>
				<br /><br />
				
			<!--手机号-->
			<label><em class="phone_icon"></em></label>
				<input placeholder=" 请输入手机号" name="phone"  class="input"/>
				<br /><br /><br />	
			<!--登录按钮-->
			<input class="submit" type="submit" name="submit" value="登录" class="c-btn3">
				<br /><br />
			
	   		<!--提示按钮-->
	   		<table class="banner_tb">
	   		<tr style="border-color: #F1360A">
	   			<td style="background-color: #ccc;">
	   				<a  target="_blank" style="color: white;">登录可查看个人二维码、佣金明细</a>
	   			</td>
	   		</tr>
	  	 	</table>
	   		
	   	
			</center>
		</div> 
   
   
   </form>
	
   <!--=============登录界面结束==================-->
   
  
 </body>
</html>
