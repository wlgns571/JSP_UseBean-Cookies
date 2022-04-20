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
	kim 쿠키가 보고싶을경우
	<%
		// 배열과 for문을 이용할 경우
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("kim")) {
					out.print(cookie.getName() + ":" + cookie.getValue());
				}
			}
		}
		// Utils 사용
		CookieUtils cookieUtils = new CookieUtils(request);
		if (cookieUtils.exists("kim")) {
			out.print(cookieUtils.getCookie("kim") + ":" + cookieUtils.getValue("kim"));
		}
		
		// "kim" 쿠키 삭제, 수정도 편하다
	%>
</body>
</html>