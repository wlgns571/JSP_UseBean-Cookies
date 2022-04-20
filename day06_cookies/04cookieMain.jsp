<%@page import="com.study.common.util.CookieUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<%@include file="/WEB-INF/inc/header.jsp"%>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<%
// 		Cookie cookie = new Cookie("kim", "JiBbang");
// 		cookie.setMaxAge(1800);
		Cookie cookie = CookieUtils.createCookie("kim", "JiBbang", 1800);
		response.addCookie(cookie);
	%>
</body>
</html>