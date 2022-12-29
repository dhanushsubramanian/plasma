<%@page import="java.sql.*"%>

<% 
String id=request.getParameter("id");                                                                                                              
System.out.println(id);
String name=request.getParameter("name");                                                                                                              
System.out.println(name);
session.setAttribute("name",name);
String bd=request.getParameter("bd");
System.out.println(bd);
String bname="bank";
 %>
 <%
try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma","root","root");
	PreparedStatement ps1=con.prepareStatement("insert into bank(id,name,bd,d1)values(?,?,?,current_timestamp())");
	ps1.setString(1, id);
	ps1.setString(2, name);
	ps1.setString(3, bd);
	ps1.executeUpdate();
	
	Statement st1=con.createStatement();
	st1.executeUpdate("update bank set status='pending' where bname='"+bname+"' ");
	
	response.sendRedirect("viewdonor1.jsp?msg=request send sucessfully");
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