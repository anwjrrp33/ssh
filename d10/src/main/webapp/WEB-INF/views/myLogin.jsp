<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>My Login Page</h1>

<c:if test="${param.error != null}">
 <h2>아이디나 패스워드가 틀렸습니다.</h2>
</c:if>

<form action="/login" method="post">
 <input type="text" name="username">
 <input type="text" name="password">
 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
 <button>LOGIN</button>
</form>

<ul>
<%
 Enumeration<String> en = request.getAttributeNames();
 
 while(en.hasMoreElements()) {
	 
	 String key = en.nextElement();
	 
	 Object value = request.getAttribute(key);
	 %>
	 <li><%=key%> ---------------- <%=value%>
	 <%
 }
%>
</ul>
</body>
</html>