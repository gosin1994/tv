<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="wap-font-scale"  content="no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width">
<meta name="keywords" content="åäº¬åå£«å¥äº¤æç½,åäº¬çº¯ç§åå£«å¥å® ç©ç¬,åäº¬åå£«å¥ç,å® ç©ç¬ä»·æ ¼,å¿å® åç¬,å¿å® ä¼ç¬">
<meta name="description" content="å¿å® ç½åå£«å¥é¢éæ¯58ååååäº¬å¹¿å¤§ä¼ç§ç¬èå±åæ­å»ºçå® ç©äº¤æå¹³å°ï¼åå«åäº¬ææ°æå¨ççº¯ç§åå£«å¥å® ç©ç¬ï¼è®©æ¨æ´å äºè§£åå£«å¥åç§ä»¥ååå£«å¥å® ç©ç¬ä»·æ ¼ï¼ä¸ä¸ªé è°±çä¹°çç½ç«ï¼äºè§£æ´å¤çº¯ç§åå£«å¥å® ç©ç¬ä¿¡æ¯ï¼å°½å¨å¿å® ç½ã">
    <title>å¿å® -æä¿äº¤æ</title>
    <link rel="Shortcut Icon" href="http://img.58cdn.com.cn/ershouxc/m/img/xcIcon.png">
    <link rel="stylesheet" href="http://c.58cdn.com.cn/xinchong/m/basic/css/init.css">
    <link rel="stylesheet" href="http://static.58.com/xinchong/m/activity/wxsign/css/sign_0910.css">

    <script src="http://c.58cdn.com.cn/xinchong/m/basic/js/jquery_min.js"></script>

    <style>
        .money{
            font-size:0.32rem;
            text-align:left;
            color:#333;
        }

        .moneygray{
            font-size:0.32rem;
            text-align:left;
            color:gray;
        }
    </style>
</head>
<body>
<script src="http://c.58cdn.com.cn/xinchong/m/basic/js/calrem.js?v1"></script>

    <form id="myform" action="/contract/sign_confirm" method="post">
    <input id="openId" name="openId" value="$!{openId}" type="hidden" />
    <input id="tradeType" name="tradeType" value="$!{tradeType}" type="hidden" />
    <input id="petQrcodeId" name="petQrcodeId" value="$!{petQrcodeId}" type="hidden" />
    <input id="deliverType" name="deliverType" value="$!{deliverType}" type="hidden"/>



        <div class="header">ä¹æ¹ç­¾å­</div>

    <!--ä¸»ä½-->
    <div class="main">
        #if(($!tradeType==1 && $!deliverType==0) || $!tradeType==2)<!--å½é¢æèè®¢é-->
        <input class="name must" id="name" name="name" placeholder="è¯·è¾å¥å§å">
        <input type="tel" id="phone" name="phone" class="phone must" placeholder="è¯·è¾å¥ææºå·" maxlength="11">
        #end
        #if($!tradeType==1 && $!deliverType!=0)<!--ç©ºè¿æ±½è¿-->
        <input class="name must" id="name" name="name" placeholder="æè´§äººå§å">
        <input type="tel" id="phone" name="phone" class="phone must" placeholder="ææºå·" maxlength="11">
        <input type="text " id="idcardNo" name="idcardNo" maxLength="18" placeholder="æè´§äººèº«ä»½è¯" class="idCard must">
        <input type="text" id="address" name="address" placeholder="è¯¦ç»ä½å" class="address must">
        #end


        <div class="priceInfo">
            #set($total= $!entity.price + $!entity.freight)
            <p class="money">äº¤ææ»é¢ï¼$!totalå</p>
            <p class="moneygray">(ççéé¢ï¼$!entity.priceåï¼å¶ä»è´¹ç¨ï¼$!entity.freightå) </p>
            <p class="money"> &nbsp;</p>
            #if($!tradeType==1)
            <p class="money">æ¯ä»å¨æ¬¾ï¼<a style="color: red;">$!totalå</a></p>
            #end

            #if($!tradeType==2)
            <p class="money">æ¯ä»å®éï¼<a style="color: red;">$!entity.reservePriceå</a></p>
            #end



        </div>



		<a class="nextBtn" href="javascript:void(0)" onclick="sign(this);">ç¡®è®¤ç­¾çº¦</a>
        <p class="msg">ï¼çµå­åè®®ä¸ç»çæä¸å¯æ´æ¹ï¼å¯å­æ¡£ä½ä¸ºå­è¯ï¼</p>


        <p class="mention name">ç¨æ·åæ ¼å¼ä¸æ­£ç¡®ï¼è¯·éæ°è¾å¥</p>
        <p class="mention phone">ææºå·ç æ ¼å¼ä¸æ­£ç¡®ï¼è¯·éæ°è¾å¥</p>
    </div>
    </form>


</body>
</html>
<script type="text/javascript" src="http://static.58.com/xinchong/m/activity/wxsign/js/sign_0910.js"></script>

<script>
function sign(obj){
	var nameReg = /^([\u4E00-\u9FA5]|[0-9A-Za-z]){1,20}$/;
	if(!nameReg.test($("#name").val())){
		$(".mention.name").show();
		return;
	}
	$("#myform").submit();
	obj.disabled=true;
}
</script>