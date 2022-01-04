<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String FC=request.getParameter("fc");
String NAME=request.getParameter("name");
String QTY=request.getParameter("qty");
String PRICE=request.getParameter("price");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection
("jdbc:mysql://localhost:3306/fwd", "root", "Kddhamo@24");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into products(FC,NAME, QTY, PRICE) values('"+FC+"','"+NAME+"','"+QTY+"','"+PRICE+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<h1>Products are Successfully added !!!!</h1>
</body>
</html>
