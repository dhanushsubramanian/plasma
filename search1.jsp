<%@page import="java.sql.*"%>
<% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="red"><center><%=msg%></center></font>
<%}
%>
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
            <li><a href="search.jsp" class="selected">search</a>
            <li><a href="viewhstatus.jsp">view status</a></li>
             <li><a href="feedback.jsp">send feedback</a></li>
            <li><a href="index.html">Logout</a></li>
            </li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_slider_wrapper">
    <div id="tooplate_slider_content">
<%
String t1=request.getParameter("t1");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root","root");				
		PreparedStatement ps = con.prepareStatement("select * from bank where bd=? and units!='-'");
		ps.setString(1,t1);
	//	ps.setString(2,s1);
		ResultSet rs = ps.executeQuery();
%>
<div>
	<br>
<br>              


	<center>
	<h2 style="color:white">Searched blood group</h2>
	<table cellspacing="8" border="2" width="60%">
	
	<tr>
		<th><center>Name</th>
		<th><center>Blood group</th>
		<th><center>units</th>
		<th><center>Action</th>
	
	
	</tr>
	<%while(rs.next())
	{
	%>
	<tr> 	

<div class="col-md-10 text-center">
	<td><%=rs.getString(5)%></td>
	
	
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(6)%></td>
	<%
	String hname=session.getAttribute("hname").toString();
 
 
                        Class.forName("com.mysql.jdbc.Driver");
						Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root","root");	
						PreparedStatement pstmt1 = con.prepareStatement("select * from hospital where hname='"+hname+"'");
						ResultSet rs1 = pstmt1.executeQuery();
						while(rs1.next()){

					%>

									<td><a
										href="sendhreq.jsp?&&hname=<%=rs1.getString(2)%>&&name=<%=rs.getString(2)%>&&bd=<%=rs.getString(3)%>">Request</a></td>

									<% 
			    
			
			    }
				%>
				
	
	
	
	</tr>
	<%} %>
	</table>
	</center></div></br></br></br></br></br></br></br></br>
	</div> 
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
	<%
		} catch (Exception e) {
			out.println(e);
		}
	%>


	</table>
	</div>
	


</body>
</html>