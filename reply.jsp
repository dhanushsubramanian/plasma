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
String msg1=request.getParameter("msg1");
String hname=session.getAttribute("hname").toString();
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
/* PreparedStatement pst=con.prepareStatement("insert into view(id,msg) values(?,?)");
 */PreparedStatement pst=con.prepareStatement("update hospital set msg1='"+msg1+"' where hname='"+hname+"'");
/* pst.setString(1,id);
pst.setString(2,msg); */
pst.executeUpdate();
}
catch(Exception e)
{
	e.printStackTrace();
}

response.sendRedirect("viewchats.jsp?msg=sent");

%>