<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fc = request.getParameter("FC");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "fwd";
String userid = "root";
String password = "Kddhamo@24";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from products where fc="+fc;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<center>
<h1>Update Products</h1>
<hr>
<style>
            body{
                	background-size: cover;
                    background-position: center;
            }
            table {
                border-collapse: collapse;
            }
            th {
                background-color:green;
                Color:white;
            }
            th, td {
                width:150px;
                text-align:center;
                border:0px solid black;
                padding:5px
            }
            .geeks {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            h1 {
                color:Black;
            }
            .addfruit{
                 background:white;
                 padding:70px;
                 border-radius:4px;
                 display:inline-block;
                 height:500px;
                 }
        </style>

<div class="addfruit">
<br>
<table>
<tr>
<input type="hidden" name="FC" value="<%=resultSet.getString("FC") %>">
<td>FC:<input type="number" name="FC" value="<%=resultSet.getString("FC") %>"></td></tr>
<tr>
<td>NAME:<input type="text" name="NAME" value="<%=resultSet.getString("NAME") %>"></td></tr>
<tr>
<td>QTY:<input type="number" name="QTY" value="<%=resultSet.getString("QTY") %>"></td></tr>
<tr>
<td>PRICE:
<input type="number" name="PRICE" value="<%=resultSet.getString("PRICE") %>"></td></tr>
<tr>
</table>
<br>
<br>
<form action="update2.jsp">
<input type="submit" value="submit">
</form>
</div>
</center>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
