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
// 		CookieUtils 만드는 이유
// 		1. han쿠키가 있는지 없는지 확인하고 싶을경우.
// 		Cookie[] cookies = request.getCookies();
// 		if (cookies != null) {
// 			for (Cookie cookie : cookies) {
// 				if(cookie.getName().equals("han")) {
// 					// 이 if문안에 왔으면 han이라는 쿠키가 있다.
// 				}
// 			}
// 		}
// 		2. new Cookie("han","anything","30분","경로"); reponse.addCookie(cookie); 
// 				처럼 한번에 만들고 싶을경우
// 		Cookie cookie = new Cookie("han","anything");
// 		cookie.setMaxAge(30분);
// 		cookie.setPath(request.getContextPath() + "/day06_cookies/path1");
// 		response.addCookie(cookie);
	%>
</body>
</html>