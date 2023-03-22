<%@page import="Model.Users"%>
<%@page import="Handler.DataHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");

	DataHandler controller = new DataHandler();
	int uid = Integer.parseInt(id);
	controller.removeUser(uid);
	response.sendRedirect("Update-Delete.jsp");
	%>
	<input type="hidden" value=" <%=request.getParameter("id")%>" />
</body>
</html>