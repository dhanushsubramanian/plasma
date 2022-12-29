<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>


<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 
<style>
p
{
font-size:20px;
}
h2
{
color:White;
}
p
{
color:Pink;
size:18px;
}
</style>
</head>
<body style="background-color:Gray">

        
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_slider_wrapper">
    <div id="tooplate_slider_content">

				
				<%
String msg=session.getAttribute("msg").toString();
				%>
				 <%
				 String hname=session.getAttribute("hname").toString();
				 Class.forName("com.mysql.jdbc.Driver");
						Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root","root");	
						PreparedStatement pstmt1 = con1.prepareStatement("select * from hospital where hname='"+hname+"'");
						ResultSet rs1 = pstmt1.executeQuery();
						while(rs1.next()){

					%> 
		<h2><center>View chats sent from hospital</center></h2>
<br>
<%=msg%>   
<form action="reply.jsp">
<tr>
<td><input type="text" name="msg1"></input></td>
</tr>

<br>
<br><br><br><br><br><br><br><br><br><br><br><br>
<br>
<br>
<br>
<center>
<button type="submit">Reply</button>
</form>
 Go back?<a href="viewfeedback.jsp">Click here!</a></center>				
				</tr>	
				<% 
			    
			
			    }
				%>
							
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