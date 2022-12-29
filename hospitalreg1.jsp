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
String id=request.getParameter("id");
String hname=request.getParameter("hname"); 
String psw=request.getParameter("psw");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
System.out.println(hname);
System.out.println(psw);
System.out.println(address);
System.out.println(contact);

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
PreparedStatement pst=con.prepareStatement("insert into hospital(id,hname,psw,address,contact) values(?,?,?,?,?)");
pst.setString(1,id);
pst.setString(2,hname);
pst.setString(3,psw);
pst.setString(4,address);
pst.setString(5,contact);
pst.executeUpdate();
response.sendRedirect("hospital.jsp?msg=your registration is completed successfully");
}
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>