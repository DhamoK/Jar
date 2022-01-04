<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.cj.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/fwd";%>
<%!String user = "root";%>
<%!String psw = "Kddhamo@24";%>
<%
String fc = request.getParameter("FC");
String name = request.getParameter("NAME");
String qty=request.getParameter("QTY");
String price=request.getParameter("PRICE");
if(fc != null)
{
Connection con = null;
PreparedStatement ps = null;
int SQ_NO = Integer.parseInt(fc);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update products set FC=?,NAME=?,QTY=?,PRICE=? where FC="+fc;
ps = con.prepareStatement(sql);
ps.setString(1,fc);
ps.setString(2,name);
ps.setString(3,qty);
ps.setString(4,price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Products Updated Successfully");
}
else
{
out.print("There is a problem in updating products");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<html>
<body>
<form action="Admin.jsp">
<submit><button>Back</button></submit>
</form>
</body>
</html>
