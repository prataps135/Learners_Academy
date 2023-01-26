<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setContentType("text/html");
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd2","root","admin123");
		Statement st = com.createStatement();
		ResultSet rs = st.executeQuery("select * from teacher");
		out.print("<table border='1'> <tr><td>Teacher</td>  <td>Class</td></tr>");
		while(rs.next()){
			out.print("<tr>");
			out.print("<td>"+rs.getString(1)+"</td>");
			out.print("<td>"+rs.getInt(2)+"</td>");
			out.print("</tr><br>");
		}
		out.print("</table>");
	%>
</body>
</html>