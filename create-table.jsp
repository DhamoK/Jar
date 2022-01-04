<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Creating a Table</title>
</head>
<body>
<h1>Creating a Table</h1>
<%
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/fwd", "root", "Kddhamo@24");
Statement statement = connection.createStatement();
String query = "CREATE TABLE products (FC Integer, NAME VARCHAR(50), QTY Integer, PRICE Integer );";
statement.executeUpdate(query);
out.println("Table products create sucessfully.");
}
catch (Exception e)
{
out.println("An error occurred.");
}
%>
</body>
</html>
