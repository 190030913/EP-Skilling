<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "jsp_crud.*" %>
    <%@ page import="java.sql.Connection" %>
    <%@ page import="java.sql.PreparedStatement" %>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1 {
  color: blue;
}
</style>
</head>
<body>
<%
	Connection con=DBUtil.DBConnection();
	PreparedStatement ps=con.prepareStatement("select * from jsp_crud");
	ResultSet rs=ps.executeQuery();
%>
<br><br><br><br>
<h1 align="center"> ** USER DETAILS **</h1>
<table align="center"  border="1">
<tr>
<th bgcolor='lightgreen'>ID</th>
<th bgcolor='lightgreen'>NAME</th>
<th bgcolor='lightgreen'>EMAIL</th>
<th bgcolor='lightgreen'>EDIT</th>
<th bgcolor='lightgreen'>DELETE</th>
</tr>
<% while(rs.next()){ %>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><a href="editform.jsp?eid=<%=rs.getInt("id") %>">Edit</a></td>
<td><a href="delete.jsp?eid=<%=rs.getInt("id") %>">Delete</a></td></tr>   
<% } %>
</table>
</body>
</html>