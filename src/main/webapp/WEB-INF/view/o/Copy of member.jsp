<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=gbk" />
<script type="text/javascript" src="${contextPath}/js/jquery-1.9.1.min.js"></script>
<meta charset="gbk" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
<meta name="googlebot" content="index,follow" /> 
<title>JT捷通-积分入户专家</title>
<meta name="keywords" content="JT捷通深圳积分入户办理,2015年深圳积分入户政策,龙华积分入户代办,民治积分入户代办,坂田积分入户代办,积分入户代办,福田积分入户代办,华强北积分入户代办,华强路积分入户代办,华强路积分入户办理,客户服务管理师培训,养老护理员培训,电子商务师培训,公共营养师培训"/>
<!-- Templates core CSS --> 
<link href="${contextPath}/css/o/choose1/style.css" rel="stylesheet" /> 
<!-- Favicons --> 
<style>
.link-btns{position:fixed;right:0;bottom:0;left:0;z-index:1000;}
.wrap{width:80%;margin:.5em auto .8em;border:1px solid #AEBDCD;background-color:#F1F5FA;box-shadow:0 5px 5px rgba(64,100,138,.4);box-sizing:border-box;overflow:hidden;border-radius:3px;}
.link-btns .l-btn{position:relative;display:inline-block;float:left;width:50%;min-height:50px;height:50px;line-height:40px;padding:.5em 0 .2em;color:#5C7894;text-decoration:none;}
.link-btns .l-btn.hover{background-color:#B5CDE6;}
.link-btns .l-btn span{position:relative;display:block;width:6.5em;margin:0 auto;}
.link-btns .l-btn span:after{content:' ';position:absolute;top:0;width:35px;height:35px;background-repeat:no-repeat;}
.link-btns .l-btn.tal span{text-align:right;}
.link-btns .l-btn.tal span:after{left:0;background-position:0 0;}
.link-btns .l-btn.tel span:after{right:0;background-position:-45px 0;}
.link-btns .l-btn:first-child{border-right:1px solid #DBE5F0;}
</style> 
</head>
<body>

<header class="jumbotron" role="banner" id="secton-1"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-7"> 
<figure class="text-center"> 
<div class="slideDown""> <img src="${contextPath}/img/o/logo.png" alt="" height="45" class="img-logo" /> 
</figure> 
 
</div> 
</div> 
</div> 
</header> 

<section class="seventh">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="3" style="color:#FFF; font-size:16px; font-weight:bold;" align="center">
会员注册

</td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td width="400">
<form action="${contextPath}/o/member/apply" method="post" onSubmit="return beforeSubmit(this);">
<input type="hidden" name="pid" value="${mid}"/>
<input type="hidden" name="customerId" value="${cid}"/>
<div>

<div style=" display:block;height:40px;padding-left:30px; margin:auto; text-align:left;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">姓名：</div>
<div style="width:70%; float:left;">
<input name="name" type="text"  class="msg_text" id="msg_username"  placeholder="请填写真实姓名" value="${customer.name}" 
style="height:30px;line-height:30px; text-align:left;border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"    maxlength="20"/>
</div>
</div>
<div style=" clear:both;"></div>

<div style=" display:block;height:40px; line-height:40px; padding-left:30px;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">手机：</div>
<div style="width:70%; float:left;">
<input name="phone" type="text"  class="msg_text" id="msg_userphone"  placeholder="请填写真实手机" value="${customer.phone}" 
style="height:30px;line-height:30px; text-align:left; border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"   maxlength="13"/></div>
<div style=" clear:both;"></div>
</div>

<div style=" clear:both;"></div>


<div style=" display:block;height:40px;padding-left:30px; margin:auto; text-align:left;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">支付宝</div>
<div style="width:70%; float:left;">
<input name="alipayNo" type="text"  class="msg_text" id="alipayNo"  placeholder="请填写支付宝账号" 
style="height:30px;line-height:30px; text-align:left;border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"    maxlength="20"/>
</div>
</div>
<div style=" clear:both;"></div>

<div style=" display:block;height:40px;padding-left:30px; margin:auto; text-align:left;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">开户行</div>
<div style="width:70%; float:left;">
<input name="bankName" type="text"  class="msg_text" id="bankName"  placeholder="请填写开户银行" 
style="height:30px;line-height:30px; text-align:left;border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"    maxlength="20"/>
</div>
</div>
<div style=" clear:both;"></div>

<div style=" display:block;height:40px;padding-left:30px; margin:auto; text-align:left;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">开户名</div>
<div style="width:70%; float:left;">
<input name="bankAccountName" type="text"  class="msg_text" id="bankAccountName"  placeholder="请填写开户姓名" 
style="height:30px;line-height:30px; text-align:left;border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"    maxlength="20"/>
</div>
</div>
<div style=" clear:both;"></div>

<div style=" display:block;height:40px;padding-left:30px; margin:auto; text-align:left;">
<div style=" float:left; width:60px; height:40px; line-height:40px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold; color:#FFF;">账号：</div>
<div style="width:70%; float:left;">
<input name="bankAccountNo" type="text"  class="msg_text" id="bankAccountNo"  placeholder="请填写开户账号" 
style="height:30px;line-height:30px; text-align:left;border:2px solid #ee404f;background:url(${contextPath}/img/o/bg_shur.png) repeat-x;-webkit-border-radius: 4px;-moz-border-radius: 4px;border-radius: 4px;width:100%;padding-left: 6px; color:#000"    maxlength="20"/>
</div>
</div>
<div style=" clear:both;"></div>


<div style=" clear:both;"></div>

<div style=" clear:both;"></div>
<div style=" display:block;height:35px; line-height:55px; padding-left:30px;">
<div style=" float:left; width:126px; height:35px; line-height:35px; font-size:18px; font-family:'微软雅黑', Arial; font-weight:bold;">
<input type="submit" name="submit" style="background:url(${contextPath}/img/o/btn1.png) no-repeat; width:126px; height:35px;border:0px; cursor:pointer"  value=""/></div>
<div style=" float:left; width:126px; height:35px; line-height:35px; font-size:18px; padding-left:10px;"><a href="javascript:history.back(-1)"><img src="${contextPath}/img/o/btn2.png" width="126" height="35" /></a><!--input name="reset" type="reset" src="images/btn2.png" width="126" height="35"--><!--img src="images/btn2.png" width="126" height="35"  alt=""/--></div>
<div style=" clear:both;"></div>
</div>
</div>
<div style="color:#FFF; padding-left:30px; padding-top:10px;">以上信息用来收取佣金</div>
</form></td>

</tr>
</table>
</section>

<footer class="footer-section" role="contentinfo"> 
<div class="container"> 
<div class="row"> 
<div class="col-md-4 col-footer"> 
<ul class="addthis_toolbox addthis_default_style"> 
<li><a class="addthis_button_facebook_like"></a></li> 
<li><a class="addthis_button_tweet"></a></li> 
</ul> 
</div> 
<div class="col-md-4 col-footer"> 
<section> 
<p>总部地址</p>
<p>宝安区西乡82区新安六路勤业商务中心B栋468室</p><br /> 
<p>TEL: <a href="">0755-32831222</a><br />
</p><br />
</section> 
</div> 
<div>
<p align="center" >JT捷通公众号</p><br />
<img src="${contextPath}/img/qrcode/gongzhonghao.jpg" alt="" height="76" class="img-services " /> 
</div>
</div> 
</div> 
</footer> 
</body>
<script type="text/javascript">
function beforeSubmit(form){

if($("#msg_username").val()=='' || !isUsername($("#msg_username").val())){
alert('请填写真实姓名！');
$("#msg_username").focus();
return false;
}
if($("#msg_userphone").val()=='' || !isPhone($("#msg_userphone").val())){
alert('请填写真实手机号码！');
$("#msg_userphone").focus();
return false;
}



return true;
}

function isUsername(temp) 
{ 
/*  var re = /^[\u4E00-\u9FA5]{1,8}$/; 
 if(re.test(temp)) return true; 
 return false;  */
 return true;
}


function isPhone(temp) 
{ 
 var re = /^1[0-9]{10}$/; 
 if(re.test(temp)) return true; 
 return false; 
} 

function isNum(temp) 
{ 
 var re = /^[1-9][0-9]{0,1}$/; 
 if(re.test(temp)) return true; 
 return false; 
} 

</script>
</html>