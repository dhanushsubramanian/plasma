<%@page import="java.sql.*" %>

<%String name=session.getAttribute("name").toString(); 
String status="Rejected";
 %>


<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma","root","root");

PreparedStatement ps=con.prepareStatement("update bank set status='"+status+"',d2=(current_timestamp()) where id='"+request.getParameter("id")+"'");
ps.executeUpdate();
response.sendRedirect("viewreq.jsp? Request Rejected");

%>
