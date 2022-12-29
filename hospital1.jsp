<%@page import="java.sql.*"%>
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
String hname=request.getParameter("hname");
session.setAttribute("hname",hname);
String psw=request.getParameter("psw");
try{	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
PreparedStatement pst=con.prepareStatement("select * from hospital where hname=? and psw=?");	
pst.setString(1,hname);
pst.setString(2,psw);
ResultSet rs=pst.executeQuery();	
if(rs.next()){
	response.sendRedirect("view.jsp?msg=login successfully");
}
else
{
	response.sendRedirect("hospital.jsp?msg=Invalid details. Please try again");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>