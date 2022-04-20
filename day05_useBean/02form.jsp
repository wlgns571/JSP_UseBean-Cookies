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
	<form action="02result.jsp">
		id : <input type="text" name="userId"><br>
		name : <input type="text" name="userName"><br>
		pass : <input type="text" name="userPass" ><br>
		role : <input type="text" name="userRole"><br>
		<button type="submit">제출</button>
	</form>
</body>
</html>