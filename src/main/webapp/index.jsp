<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%

String str="";
response.sendRedirect(request.getContextPath()+ "/login"); 

%>
<html>
<body>
<h2>Hello World! Welcome ！</h2>
</body>
<%-- <script src="${contextPath}/js/ad/testad.js"></script> --%>
</html>
