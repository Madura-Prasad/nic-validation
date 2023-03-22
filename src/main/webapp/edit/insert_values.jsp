<%@page import="java.net.URLEncoder"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Locale"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.apache.catalina.tribes.UniqueId"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="Model.Users"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Period"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="Handler.DataHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD Operation</title>
</head>
<body>

	<%
	//Insert Data into Database
	String Id = request.getParameter("id");
	String FullName = request.getParameter("FullName");
	String Address = request.getParameter("Address");
	String Nationality = request.getParameter("Nationality");
	String NIC = request.getParameter("NIC");
	String Mobile = request.getParameter("Mobile");
	DataHandler dh = new DataHandler();

	Users users = new Users(Id, FullName, Address, Nationality, NIC, Mobile);

	try {
		dh.addUser(users);
		String message = "User Added Successfully";
		response.sendRedirect("../Index.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
	} catch (Exception e) {
		out.println("Database Connection Error");
		e.printStackTrace();
	}
	%>
</body>
</html>