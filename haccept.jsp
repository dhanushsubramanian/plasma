<%@page import="java.sql.*" %>

<%String hname=session.getAttribute("hname").toString();
String status="accepted";
 %>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma","root","root");

	PreparedStatement ps=con.prepareStatement("update request set status='"+status+"',d2=(current_timestamp()) where id='"+request.getParameter("id")+"'");
	ps.executeUpdate();
response.sendRedirect("viewhreq.jsp?Accepted Successful");

%>