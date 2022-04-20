<%@page import="com.study.common.util.CookieUtils"%>
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
<title>Insert title here</title>
</head>
<body>
	<%
		CookieUtils cookieUtils = new CookieUtils(request);
		if (cookieUtils.exists("AUTH")) {
			String msg = request.getParameter("msg");
			if (msg != null) out.print(msg);
			
			/* String check = "";
			if (cookieUtils.exists("SAVE_ID")) {
				check = "checked= 'checked'";
			} */
	%>
	<!-- container -->
	<%@include file="/WEB-INF/inc/top.jsp"%>

	로그인 중
	<a href="logout.jsp" class="btn btn-success btn-sm">로그아웃</a>
	<%
		} else {
	%>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<form action="loginCheck.jsp" class="loginForm">
			<h2>로그인</h2>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th>아이디</th>
					<% if (cookieUtils.exists("SAVE_ID")) { %>						
						<td><input type="text" name="userId"
							class="form-control input-sm" value="<%=cookieUtils.getCookie("SAVE_ID").getValue()%>"></td>
					<% } else { %>		
						<td><input type="text" name="userId"
							class="form-control input-sm" value=""></td>
					<% }%>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="userPass"
							class="form-control input-sm"></td>
					</tr>
					<tr>
					<% if (cookieUtils.exists("SAVE_ID")) { %>						
						<td colspan="2"><label><input type="checkbox"
								name="rememberMe" value="Y" checked="checked" <%-- <%=check %> --%>>ID 기억하기</label></td>
					<% } else { %>		
						<td colspan="2"><label><input type="checkbox"
								name="rememberMe" value="Y">ID 기억하기</label></td>
					<% }%>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="btn btn-primary btn-sm pull-right">로그인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<%
		}
	%>
</body>
</html>