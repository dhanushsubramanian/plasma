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
            <li><a href="donor.jsp">Donor Login</a>
                <!-- <ul><span class="top"></span><span class="bottom"></span>
                    <li><a href="#">Sub menu 1</a></li>
                    <li><a href="#">Sub menu 2</a></li>
                    <li><a href="#">Sub menu 3</a></li>
              </ul> -->
            </li>
            <li><a href="bank.jsp"class="selected">Blood bank Login</a>
            </li>
            <li><a href="hospital.jsp">Hospital Login</a></li>
        </ul>
        <br style="clear: left" />
    </div> <!-- end of tooplate_menu -->
    <div id="tooplate_slider_wrapper">
    <div id="tooplate_slider_content">
    <br>
<h2><b><center>Blood bank Login</center></h2> <br> 
<form action="bank1.jsp">
&nbsp &nbsp &nbsp<label for="name"style="; font-family:Times New Roman; font-size:20px;">Name</label>
  &nbsp<input type="text" name="name" placeholder="enter name" id="name"style="; font-family:Times New Roman;" required>
  <br>
  <br>
 <label for="password"style="; font-family:Times New Roman; font-size:20px; ">Password</label>
&nbsp<input type="password" name="password" placeholder="enter password"  id="password"style="; font-family:Times New Roman;"required> &nbsp  
  <br>
  <br>
  <center>
 <button type="submit">Login</button>&nbsp &nbsp 
 <button type="reset" value="reset">Reset</button>
</form>
</center>
    </div>	
        <div id="tooplate_slider" class="slider-wrapper theme-orman">
            <div id="slider" class="nivoSlider">
                <a rel="nofollow" target="_blank"><img src="images/slider/plasma.jpg" alt="" title="This is a plasma" /></a>
            </div>
            <div id="htmlcaption" class="nivo-html-caption">
                <strong>This</strong> is an example of a <em>HTML</em> caption with <a rel="nofollow" href="http://dev7studios.com" target="_blank">a credit link</a>.            
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
    	
</body>
</html>