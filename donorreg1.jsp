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
session.setAttribute("id",id);
String name=request.getParameter("name");
String email=request.getParameter("email"); 
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String bd=request.getParameter("bd");
session.setAttribute("bd",bd);
String age=request.getParameter("age");
String contact=request.getParameter("contact");
String address=request.getParameter("address");
System.out.println(name);
System.out.println(email);
System.out.println(password);
System.out.println(gender);
System.out.println(dob);
System.out.println(bd);
System.out.println(age);
System.out.println(contact);
System.out.println(address);

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");


PreparedStatement pd=con.prepareStatement("select count(*) from donor where name='"+name+"'");
int a=0;
ResultSet rss=pd.executeQuery();
while(rss.next()){
	a=rss.getInt(1);
}
if(a>0){
	response.sendRedirect("donorreg.jsp?m=Username already exists");
}
else{

PreparedStatement pst=con.prepareStatement("insert into donor(id,name,email,password,gender,dob,bd,age,contact,address,dat) values(?,?,?,?,?,?,?,?,?,?,current_timestamp())");
pst.setString(1,id);
pst.setString(2,name);
pst.setString(3,email);
pst.setString(4,password);
pst.setString(5,gender);
pst.setString(6,dob);
pst.setString(7,bd);
pst.setString(8,age);
pst.setString(9,contact);
pst.setString(10,address);
pst.executeUpdate();
response.sendRedirect("donor.jsp?msg=your registration is completed successfully");
}}	
catch(Exception e)
{
	e.printStackTrace();
}



%>
</body>
</html>