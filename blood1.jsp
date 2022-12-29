<%@page import="java.sql.*" %>
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
String name=session.getAttribute("name").toString();
System.out.println(name);
String units=request.getParameter("units");
System.out.println(units);
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
/* PreparedStatement pst=con.prepareStatement("update donor set units='"+units+"' where name='"+session.getAttribute("name").toString()+"'"); */
PreparedStatement pst=con.prepareStatement("update bank set units='"+units+"' where name='"+session.getAttribute("name").toString()+"'");
pst.executeUpdate();
response.sendRedirect("addblood.jsp?msg=added successfully");
}
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>