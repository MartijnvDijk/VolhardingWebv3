<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Media.aspx.cs" Inherits="VolhardingWebv3.GUI.Media" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>RKVV-Volharding</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
      $(window).load(function () {
          $('#slider').nivoSlider();
      });
  </script> 
</head>

<body>
  <div id="main">

	<div id="menubar">
	  <div id="welcome">
	    <h1><a href="#">Volharding</a></h1>
	  </div><!--close welcome-->
      <div id="menu_items">
	    <ul id="menu">
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
          <li class="current"><a href="Media.aspx">Media</a></li>
          <li><a href="Team.aspx">Team</a></li>
          <li><a href="Login.aspx">Login</a></li>
        </ul>
      </div><!--close menu-->
    </div><!--close menubar-->	
    
	<div id="site_content">		

	    <!--close banner_image-->	

	    <!--close sidebar_container-->		  
	 
	    <!--close content-->   
	
	  <div id="content_beige">
	    <div class="content_beige_container_box">
		  <h4>Latest Blog Post</h4>
	      <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
		  <div class="readmore">
		    <a href="#">Read more</a>
		  </div><!--close readmore-->
	    </div><!--close content_beige_container_box-->
        <div class="content_beige_container_box">
         <h4>Latest News</h4>
	      <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	      <div class="readmore">
		    <a href="#">Read more</a>
		  </div><!--close readmore-->
	    </div><!--close content_beige_container_box-->
        <div class="content_beige_container_boxl">
		  <h4>Latest Projects</h4>
	      <p> Phasellus laoreet feugiat risus. Ut tincidunt, ante vel fermentum iaculis.</p>
	      <div class="readmore">
		    <a href="#">Read more</a>
		  </div><!--close readmore-->	  
	    </div><!--close content_beige_container_box1-->      
	    <br style="clear:both"/>
      </div><!--close content_beige--> 	
	</div><!--close site_content--> 
  
  </div><!--close main-->
  
    <!--close footer-->  
  
</body>
</html>
