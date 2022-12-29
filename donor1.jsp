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
String name=request.getParameter("name");
session.setAttribute("name",name);
String password=request.getParameter("password");
try{	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
PreparedStatement pst=con.prepareStatement("select * from donor where name=? and password=?");	
pst.setString(1,name);
pst.setString(2,password);
ResultSet rs=pst.executeQuery();	
if(rs.next()){
	response.sendRedirect("upload.jsp?msg=login successfully");
}
else
{
	response.sendRedirect("donor.jsp?msg=Invalid details. Please try again");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>