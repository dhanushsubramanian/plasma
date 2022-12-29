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
            <li><a href="viewdonor1.jsp">view donors</a>
            <li><a href="viewstatus.jsp">View status</a></li>
            <li><a href="viewhreq.jsp">View requests</a></li>
             <li><a href="viewfeedback.jsp"class="selected">View Feedback</a></li>
            <li><a href="index.html">Logout</a></li>
            </li>
        </ul>

        
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_slider_wrapper">
    <div id="tooplate_slider_content">
<center>
<h2><b>View Hospital Feedback</b></h2>
<br>
<table cellspacing="8" border="2" width="80%">
			<tr>
			    <th><center>Hospital Name</th>
				<th><center>Feedback</th>
				
				<%
//String hname=session.getAttribute("hname").toString();
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/plasma", "root", "root");
				PreparedStatement pstmt = con.prepareStatement("select * from request where feedback!='0' ");
			    ResultSet rs=pstmt.executeQuery();
			    while(rs.next()){
			    	%>
	<tr>
	            <td align="center"><font color="Green"required><%=rs.getString(2)%></font></td>
	            <td align="center"><font color="Green"required><%=rs.getString(7)%></font></td>				
		</tr>
		<% 
			    }
			}catch(Exception e){
			    	e.printStackTrace();
			    }
				%>
				
			
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