<%@page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.util.*"%>

<%@ page import="java.text.SimpleDateFormat"%>  
<%
 	FileOutputStream fw=null;
 byte b[] = null;
 String id=request.getParameter("id");
 session.setAttribute("id",id);
 String name=session.getAttribute("name").toString();
 System.out.println(name); 
String file = request.getParameter("file");
 System.out.println(file);
 String file1 = request.getParameter("file1");
 System.out.println(file1);
 String s1="";
 File f = new File("C:/Users/YMTS0410/Desktop/" + file);
 FileInputStream fis1 = new FileInputStream(f);
 BufferedReader br1=new BufferedReader(new FileReader(f));
 StringBuffer sb1 = new StringBuffer();
 while((s1=br1.readLine())!=null){
 	//System.out.println("s======"+s);
 	sb1.append(s1);
 }

 //System.out.println(sb);
 session.setAttribute("sb1",sb1.toString());
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma","root","root");
 	/*  String data=(String)session.getAttribute("sb1");
 	System.out.println("datais: "+data);	 */
 	 File f1 = new File("C:/Users/YMTS0410/Desktop/" + file);
	FileInputStream fis12 = new FileInputStream(f1);	
  PreparedStatement ps = con.prepareStatement("insert into donor1(name,file,file1,id) values(?,AES_ENCRYPT(?,'ram'),?,?)");
 ps.setString(1,name); 
ps.setBinaryStream(2, (InputStream)fis1, (int)(f1.length()));	
ps.setBinaryStream(3, (InputStream)fis12, (int)(f1.length()));
ps.setString(4,id); 
ps.executeUpdate(); 
 		response.sendRedirect("profile.jsp?msg=successfully uploaded");

 		session.setAttribute("file1",f1);
 %>0
