 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");

Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/fwd", "root", "Kddhamo@24");

Statement stat=c.createStatement();
String id=request.getParameter("FC");
int del=stat.executeUpdate("Delete from products where FC="+id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1> Product <%=request.getParameter("FC")%> details are deleted !!!!</h1>
<form action="Admin.jsp">
<submit><button>Back</button></submit>
</form>
</body>
</html>
