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
		Cookie cookie = new Cookie("name","지빵");
		cookie.setMaxAge(15);
		// setMaxAge(15)은 15초 뒤에 쿠키가 삭제된다는 의미
		// setMaxAge(seconds)를 하면 브라우저가 껏다 켜져도 삭제 되지 않는다.
		// 따로 setMaxAge를 설정하지 않으면 -1이다.
		// -1은 브라우저가 꺼지면 쿠키를 삭제하겠다는 의미
		response.addCookie(cookie);
		// 순서 : 02cookieMaxAge -> viewCookie 새로고침
	%>
</body>
</html>