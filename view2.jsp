<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
background-image:url('images/rose.png');
background-size:1400px 600px;
background-repeat:no-repeat;
</style>
</head>
<body style="background-color:Gray">
<%
String hname=session.getAttribute("hname").toString();
String id=request.getParameter("id");
String msg=request.getParameter("msg");
session.setAttribute("msg",msg);
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
/* PreparedStatement pst=con.prepareStatement("insert into view(id,msg) values(?,?)");
 */PreparedStatement pst=con.prepareStatement("update hospital set msg='"+msg+"' where hname='"+hname+"'");
/* pst.setString(1,id);
pst.setString(2,msg); */
pst.executeUpdate();
}
catch(Exception e)
{
	e.printStackTrace();
}

response.sendRedirect("view.jsp?msg=sended");

%>
<h2>View chats sent from hospital
<br>
 <%=msg%></h2>
 Go back?<a href="viewfeedback.jsp">Click here!</a>

</body>
</html>