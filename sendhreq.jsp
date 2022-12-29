<%@page import="java.sql.*"%>

<% 
String id=request.getParameter("id");                                                                                                              
System.out.println(id);
String hname=request.getParameter("hname");                                                                                                              
System.out.println(hname);
session.setAttribute("hname",hname);
String bd=request.getParameter("bd");                                                                                                              
System.out.println(bd);
String name=request.getParameter("name");  
session.setAttribute("name",name);
System.out.println(name);

 %>
 <%
try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma","root","root");
	PreparedStatement ps1=con.prepareStatement("insert into request(id,hname,bd,name,d1,status)values(?,?,?,?,current_timestamp(),'pending')");
	ps1.setString(1, id);
	ps1.setString(2, hname);
	ps1.setString(3, bd);
	ps1.setString(4, name);
	ps1.executeUpdate();
	
	Statement st1=con.createStatement();
	//st1.executeUpdate("update request set status='pending' where hname='"+hname+"' and  name='"+name+"'");
	
	response.sendRedirect("search.jsp?msg=request send sucessfully");
	%>
	<% 
			    
			}catch(Exception e){
			    	e.printStackTrace();
			    }
				%>
	 </div>	
        <script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
				effect: 'boxRainGrow',
                controlNav:false,
             	directionNavHide: false
            });
        });
        </script>
        <div class="clear"></div>
    </div> <!-- END of slider -->   
    	
</body>
</html>