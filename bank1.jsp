<% 
String s1=request.getParameter("name");
String s2=request.getParameter("password");
System.out.println(s1);
if((s1.equalsIgnoreCase("bank"))&&(s2.equalsIgnoreCase("bank")))
{
response.sendRedirect("viewdonor1.jsp? msg=login successfully");
}
else
{
response.sendRedirect("bank.jsp?msg=incorrect name and password");
}
%>