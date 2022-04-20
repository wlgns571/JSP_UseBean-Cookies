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
		Cookie cookie = new Cookie("key","value");
		response.addCookie(cookie);
	%>
</body>
</html>