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
	<!-- 쿠키 삭제 방법은 따로 없음
		쿠키 지속시간을 0으로 만든다.
	 -->
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("key")) {
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	%>
</body>
</html>