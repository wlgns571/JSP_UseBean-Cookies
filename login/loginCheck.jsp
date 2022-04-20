<%@page import="java.util.List"%>
<%@page import="com.study.common.util.CookieUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.study.login.vo.UserVO"%>
<%@page import="com.study.common.util.UserList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/inc/header.jsp"%>
<title></title>
</head>
<body>
	<%
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPass");
		String remem = request.getParameter("rememberMe");
		String alert = "id 또는 패스워드를 입력하시오";
		UserList userList = new UserList();
		/* if(id.isEmpty() || pw.isEmpty()){} 둘중 하나 입력 */
		if (id == null || id.equals("")) {
			response.sendRedirect("login.jsp?msg=" + URLEncoder.encode(alert, "UTF-8"));
		} else if (pw == null || pw.equals("")) {
			response.sendRedirect("login.jsp?msg=" + URLEncoder.encode(alert, "UTF-8"));
			
			// UserVO user = userList.getUser(id); 
		} else if (userList.getUser(id) == null) {
			alert = "id 또는 패스워드가 틀립니다.";
			response.sendRedirect("login.jsp?msg=" + URLEncoder.encode(alert, "UTF-8"));
		} else if (!userList.getUser(id).getUserPass().equals(pw)) {
			alert = "id 또는 패스워드가 틀립니다.";
			response.sendRedirect("login.jsp?msg=" + URLEncoder.encode(alert, "UTF-8"));
		} else {
			if (remem != null) {
				Cookie cookie = CookieUtils.createCookie("SAVE_ID", id, "/", (60*60*24*7));
				response.addCookie(cookie);
			} else {
				Cookie cookie = CookieUtils.createCookie("SAVE_ID", id, "/", 0);
				response.addCookie(cookie);
			}
				Cookie cookie = CookieUtils.createCookie("AUTH", id);
				response.addCookie(cookie);
				response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>