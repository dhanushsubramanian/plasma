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
String hname=session.getAttribute("hname").toString();
String feedback=request.getParameter("feedback");
System.out.println(feedback);
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
PreparedStatement pst=con.prepareStatement("update request set feedback='"+feedback+"' where hname='"+hname+"'");
pst.executeUpdate();
response.sendRedirect("feedback.jsp?msg=successfully submitted");
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>