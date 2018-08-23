<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<title>佣金明细</title>
</head>

<body>
<div class="Layout_style">
 <header id="header">
  <div class="header_l header_return"><a href="javascript:history.back();" class="iconfont icon-back"></a></div>
  <h1> 佣金明细 </h1>
</header>
<!--订单管理界面-->
 <div class="order_style clearfix">
   <div id="Order_Manage">
    <div class="bd" id="order-bd">
      <div class="con">
       <ul class="list">
       
       <c:forEach items="${commissions}" var="commission">
       
        <li class="order_style">
        <div class="order_title"><span class="Numbering   f_l">时间：<fmt:formatDate
													value="${commission.createTime}" type="both" /></span><span class="status  f_r">是否结清：
													<c:choose>
												<c:when test="${commission.state==1}">
													<i>已结清</i>
												</c:when>
												<c:otherwise>
													<i>否</i>
												</c:otherwise>
											</c:choose>
													</span></div>
         <div class="product_img clearfix">
         <br/>
         <a href="#" class="img">&nbsp;&nbsp;&nbsp;会员姓名 ： ${commission.memberName}&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;
         <a href="#" class="img">&nbsp;&nbsp;&nbsp;客户姓名 ： ${commission.customerName}&nbsp;&nbsp;&nbsp;</a> 
         
         </div>    
         <br/>    
         <div class="operating"><span class="price">佣金：<i>￥</i>${commission.amount}</span></div>
        </li>
        </c:forEach>
        <div class="Paging">
         <span class="">共：${count}条记录</span>
         <!-- <a href="#">上一页</a>
         <a href="#">下一页</a> -->
        </div>
       </ul>
      </div>
     <div class="con">
       <ul class="list">
                <li class="order_style">
        <div class="order_title"><span class="Numbering   f_l">编号：20160311045023</span><span class="status  f_r">状态：<i>已完成</i></span></div>
         <div class="product_img clearfix">
         <a href="#" class="img"><img src="products/p_14.jpg" width="80" height="80" /></a>
         <a href="#" class="img"><img src="products/p_11.jpg" width="80" height="80" /></a> 
         <a href="#" class="img"><img src="products/p_26.jpg" width="80" height="80"/></a>
         </div>        
         <div class="operating"><span class="price">总价：<i>￥</i>230</span><a href="Order_detailed.html" class="detailed_link">详细</a><a href="#" class="iconfont icon-delete"></a></div>
        </li>
         <li class="order_style">
        <div class="order_title"><span class="Numbering   f_l">编号：20160311045023</span><span class="status  f_r">状态：<i>已完成</i></span></div>
         <div class="product_img clearfix">
         <a href="#" class="img"><img src="products/p_14.jpg" width="80" height="80" /></a>
         <span class="title">御泥坊 美白嫩肤亮肌礼盒（洁面乳+润肤水+润肤乳）</span>         
         </div>        
         <div class="operating"><span class="price">总价：<i>￥</i>230</span><a href="Order_detailed.html" class="detailed_link">详细</a><a href="#" class="iconfont icon-delete"></a></div>
        </li>
       </ul>
      </div>
       <div class="con">
       <ul class="list">
          <li class="order_style">
        <div class="order_title"><span class="Numbering   f_l">编号：20160311045023</span><span class="status  f_r">状态：<i>未完成</i></span></div>
         <div class="product_img clearfix">
         <a href="#" class="img"><img src="products/p_14.jpg" width="80" height="80" /></a>
         <span class="title">御泥坊 美白嫩肤亮肌礼盒（洁面乳+润肤水+润肤乳）</span>        
         </div>        
         <div class="operating"><span class="price">总价：<i>￥</i>230</span>
         <a href="Order_detailed.html" class="detailed_link">详细</a><a href="#" class="iconfont icon-share"></a><a href="#" class="iconfont icon-delete"></a></div>
        </li>
         <li class="order_style">
        <div class="order_title"><span class="Numbering   f_l">编号：20160311045023</span><span class="status  f_r">状态：<i>未完成</i></span></div>
         <div class="product_img clearfix">
         <a href="#" class="img"><img src="products/p_14.jpg" width="80" height="80" /></a>
         <span class="title">御泥坊 美白嫩肤亮肌礼盒（洁面乳+润肤水+润肤乳）</span>        
         </div>        
         <div class="operating"><span class="price">总价：<i>￥</i>230</span>
         <a href="Order_detailed.html" class="detailed_link">详细</a><a href="#" class="iconfont icon-share"></a><a href="#" class="iconfont icon-delete"></a></div>
        </li>
       </ul>
      </div>
    </div>
   </div>
    <script type="text/javascript">
			TouchSlide( { slideCell:"#Order_Manage",

				endFun:function(i){ //高度自适应
					var bd = document.getElementById("order-bd");
					bd.parentNode.style.height = bd.children[i].children[0].offsetHeight+"px";
					if(i>0)bd.parentNode.style.transition="200ms";//添加动画效果
				}

			} );
  </script>
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

</div>

</body>
</html>

