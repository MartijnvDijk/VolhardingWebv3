<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="VolhardingWebv3.GUI.Team" %>

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
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
          <li><a href="Media.aspx">Media</a></li>
          <li class="current"><a href="Team.aspx">Team</a></li>
          <li><a href="Login.aspx"><asp:Label ID="LblTest" runat="server" Text="Label"></asp:Label></a></li>
        </ul>
      </div><!--close menu-->
    </div><!--close menubar-->	
    
	<div id="site_content">		

	    <!--close banner_image-->	

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>New Website</h2>
            <p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>&nbsp;</h2>
            <h3>February 2013</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->
		<div class="sidebar">
          <div class="sidebar_item">
            <h3>January 2013</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>         
		  </div><!--close sidebar_item--> 
        </div><!--close sidebar-->  		
      </div><!--close sidebar_container-->		  
	 
	  <div id="content">
        <div class="content_item">
		  <h1>Materiaal</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceMateriaal" Width="577px">
                    <Columns>
                        <asp:BoundField DataField="AANTAL" HeaderText="AANTAL" SortExpression="AANTAL" />
                        <asp:BoundField DataField="NAAM" HeaderText="NAAM" SortExpression="NAAM" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceMateriaal" runat="server" ConnectionString="<%$ ConnectionStrings:DBI296112.fhictora %>" ProviderName="<%$ ConnectionStrings:DBI296112.fhictora.ProviderName %>" SelectCommand="SELECT &quot;AANTAL&quot;, &quot;NAAM&quot; FROM &quot;MATERIAAL&quot;"></asp:SqlDataSource>
            </p> 
		  <div class="content_container">
		  	<div class="button_small">
		        Lees meer
		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <div class="content_container">
		  	<div class="button_small">
		        Lees meer
		    </div><!--close button_small-->		  
		  </div><!--close content_container-->		
		    <!--close content_container-->
            <!--close content_container-->			  
		</div><!--close content_item-->
      </div><!--close content-->   
	
	    <!--close content_beige--> 	
	</div><!--close site_content--> 
  
  </div><!--close main-->
  
    <!--close footer-->  
  
    </form>
  
</body>
</html>
