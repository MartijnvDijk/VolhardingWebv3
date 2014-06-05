<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="VolhardingWebv3.GUI.Home" %>

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
    <form id="form1" runat="server">
  <div id="main">

	<div id="menubar">
	  <div id="welcome">
	    <h1><a href="#">Volharding</a></h1>
	  </div><!--close welcome-->
      <div id="menu_items">
	    <ul id="menu">
          <li class="current"><a href="Home.aspx">Home</a></li>
          <li><a href="Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
          <li><a href="Media.aspx">Media</a></li>
          <li><a href="Team.aspx">Team</a></li>
          <li><a href="Login.aspx"><asp:Label ID="LblLogin" runat="server" Text="Label"></asp:Label></a></li>
        </ul>
      </div><!--close menu-->
    </div><!--close menubar-->	
    
	<div id="site_content">		

	  <div id="banner_image">
	    <div id="slider-wrapper">        
          <div id="slider" class="nivoSlider">
            <img src="images/home_1.jpg" alt="" />
            <img src="images/home_2.jpg" alt="" />
		  </div><!--close slider-->
		</div><!--close slider_wrapper-->
	  </div><!--close banner_image-->	

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Sponsor</h2>
            <p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Infobord</h2>
            <h3>Juli 2014</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>November 2014</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  		
      </div><!--close sidebar_container-->		  
	 
	  <div id="content">
        <div class="content_item">
		  <h1>Mededelingen</h1> 
	      <p>Hieronder staan de laatste 4 mededelingen.</p>	  
		  <div class="content_container">
              <asp:Label ID="LblMed1" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim. Aliquam facilisis neque non nunc posuere eget volutpat metus tincidunt."></asp:Label>
		  	<div class="button_small">
		        Lees meer
		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <div class="content_container">
              <asp:Label ID="LblMed2" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim. Aliquam facilisis neque non nunc posuere eget volutpat metus tincidunt."></asp:Label>       
		  	<div class="button_small">
		        Lees meer
		    </div><!--close button_small-->		  
		  </div><!--close content_container-->		
		  <div class="content_container">
              <asp:Label ID="LblMed3" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim. Aliquam facilisis neque non nunc posuere eget volutpat metus tincidunt."></asp:Label>
            <div class="button_small">
		        Lees meer
		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <div class="content_container">
              <asp:Label ID="LblMed4" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim. Aliquam facilisis neque non nunc posuere eget volutpat metus tincidunt."></asp:Label>
            <div class="button_small">
		        Lees meer
		    </div><!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
          <asp:TextBox ID="TbTitel" runat="server"></asp:TextBox>
          <asp:TextBox ID="TbMed" runat="server" TextMode="MultiLine"></asp:TextBox>
          <asp:DropDownList ID="DropDownListMededelingen" runat="server">
          </asp:DropDownList>
          <asp:Button ID="BtnBevestigMed" runat="server" Text="Bevestigen" OnClick="BtnBevestigMed_Click" />
      </div><!--close content-->   
	
	    <!--close content_beige--> 	
	</div><!--close site_content--> 
  
  </div><!--close main-->
  
    <!--close footer-->  
  
    </form>
  
</body>
</html>
