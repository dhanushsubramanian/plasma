<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Red Bokeh - free web template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2061 red bokeh
http://www.tooplate.com/view/2061-red-bokeh
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

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

</style>
</head>
<body>
<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="site_title"><center>Instant Plasma Donor Recipient Connector</center></div>
    </div> <!-- END of header -->
    <div id="tooplate_menu" class="ddsmoothmenu">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="upload.jsp">upload certificate</a>
            </li>
            <li><a href="profile.jsp" class="selected">view profile</a>
            </li>
            
            <li><a href="viewreq.jsp">view requests</a></li>
             <li><a href="index.html">Logout</a></li>
            
        </ul>
        
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_slider_wrapper">
    <div id="tooplate_slider_content">
<h2><b><center>View Profile</center></h2>  
<br>
<center>
<table cellspacing="8" border="2" width="60%">
			<tr>
			    <th><center>name</th>
				 <th><center>certificate</th>
				<th><center>Blood group</th>
				<th><center>Age</th>  
				 <%
				 String name=session.getAttribute("name").toString();
				try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
	PreparedStatement pstmt = con.prepareStatement("select * from donor1 where name='"+name+"'");
    ResultSet rs=pstmt.executeQuery();
    while(rs.next()){
%>
<tr>
				
				<td align="center"name="name"><font color="Black"required><%=rs.getString(1)%></font></td>	
				<td><img src="viewphoto.jsp?name=<%=rs.getString(1)%>&&id=<%=rs.getString(4)%> width="100" height="100" "></img></td>	
						
 <%
 
 
                        Class.forName("com.mysql.jdbc.Driver");
						Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root","root");	
						PreparedStatement pstmt1 = con.prepareStatement("select * from donor where name='"+name+"'");
						ResultSet rs1 = pstmt1.executeQuery();
						while(rs1.next()){

					%> 
	
				
				<td align="center"name="bd"><font color="Black"required><%=rs1.getString(7)%></font></td>
				<td align="center"name="age"><font color="Black"required><%=rs1.getString(8)%></font></td>	
				<% 
			    
			
			    }
				%>
				
				<% 
			    }
			}catch(Exception e){
			    	e.printStackTrace();
			    }
				%>
				</tr>	
		</table>
	</center>
  
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