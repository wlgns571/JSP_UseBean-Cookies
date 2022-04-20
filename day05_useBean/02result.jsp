<%@page import="com.study.login.vo.UserVO"%>
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
		// String id = request.getParameter("userID");
	%>
	<jsp:useBean id="user" class="com.study.login.vo.UserVO"></jsp:useBean>
	<%
		/* // 위의 useBean태그와 같은 의미
		UserVO user = (UserVO) request.getAttribute("user");
		if (user == null) {
			user = new UserVO();
			request.setAttribute("user", user);
		} */
		// 사용자가 입력한 모든 값들을 DB(user테이블)에 넣으려고 한다.
		/* user.setUserId(request.getParameter("userId"));
		user.setUserName(request.getParameter("userName"));
		user.setUserPass(request.getParameter("userPass"));
		user.setUserRole(request.getParameter("userRole"));
		// insert(user); */
	%>
	<!-- 한번에 인서트 가능 -->
	<jsp:setProperty property="*" name="user"/>
	<%-- 	<%insert(user); %> --%>
	<!-- 	결론 : useBean태그 쓰는 이유 -> 파라미터로 온것 VO에 자동으로 세팅 ( VO는 자바빈 규약을 잘 지켜야한다. 파라미터 이름이랑 필드이름이랑 같게 )-->
	
	<h1>setting 전</h1>
	<%-- id : <jsp:getProperty property="userId" name="user"/> <br><!-- name은 useBean Id값 --> 
	name : <jsp:getProperty property="userName" name="user"/><br>
	pass : <jsp:getProperty property="userPass" name="user"/><br>
	role : <jsp:getProperty property="userRole" name="user"/><br>
	<hr>
	<h1>setting 후</h1>
	<jsp:setProperty property="userId" name="user"/>
	<jsp:setProperty property="userName" name="user"/>
	<jsp:setProperty property="userPass" name="user"/>
	<jsp:setProperty property="userRole" name="user"/>
	
	<!-- 파라미터이름과 필드의 이름이 같으면 알아서 출력해줌 -->
	<jsp:setProperty property="*" name="user"/>
	
	id : <jsp:getProperty property="userId" name="user"/><br>
	name : <jsp:getProperty property="userName" name="user"/><br>
	pass : <jsp:getProperty property="userPass" name="user"/><br>
	role : <jsp:getProperty property="userRole" name="user"/><br> --%>
	
</body>
</html>