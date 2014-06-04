<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wedstrijdinfo.aspx.cs" Inherits="VolhardingWebv3.GUI.Wedstrijdinfo" %>

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
          <li class="current"><a href="Wedstrijdinfo.aspx">Wedstrijdinfo</a></li>
          <li><a href="Media.aspx">Media</a></li>
          <li><a href="Team.aspx">Team</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </div><!--close menu-->
    </div><!--close menubar-->	
    
	<div id="site_content">		

	    <br />
        <br />
        <!--close banner_image-->	

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Sponsor</h2>
            <p>Welcome to our new website. Please have a look around, any feedback is much appreciated.</p>
          </div><!--close sidebar_item--> 
        </div><!--close sidebar-->     		
		  <!--close sidebar-->
		  <!--close sidebar-->  		
      </div><!--close sidebar_container-->		  
	 
	  <div id="content">
        <div class="content_item">
		  <h1>Wedstrijden</h1> 
	      <p>Hieronder staan de wedstrijden.</p>
            <!--close content_container-->
            <!--close content_container-->		
		    <!--close content_container-->
          <div class="content_container">
		      <!--close button_small-->		  
		      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceWedstrijden" Width="586px">
                  <Columns>
                      <asp:BoundField DataField="DATUM" HeaderText="DATUM" SortExpression="DATUM" />
                      <asp:BoundField DataField="AANVANG" HeaderText="AANVANG" SortExpression="AANVANG" />
                      <asp:BoundField DataField="VERTREK" HeaderText="VERTREK" SortExpression="VERTREK" />
                      <asp:BoundField DataField="TEAMTHUIS" HeaderText="TEAMTHUIS" SortExpression="TEAMTHUIS" />
                      <asp:BoundField DataField="TEAMUIT" HeaderText="TEAMUIT" SortExpression="TEAMUIT" />
                      <asp:BoundField DataField="SCHEIDSINFO" HeaderText="SCHEIDSINFO" SortExpression="SCHEIDSINFO" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSourceWedstrijden" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringVolhardingOracle %>" ProviderName="<%$ ConnectionStrings:ConnectionStringVolhardingOracle.ProviderName %>" SelectCommand="SELECT &quot;DATUM&quot;, &quot;AANVANG&quot;, &quot;VERTREK&quot;, &quot;TEAMTHUIS&quot;, &quot;TEAMUIT&quot;, &quot;SCHEIDSINFO&quot; FROM &quot;PROGRAMMA&quot;"></asp:SqlDataSource>
              <br />
              <br />
        <div class="content_item">
		  <h1>Stand</h1> 
	      <p>Hieronder staat de stand.</p>
            <!--close content_container-->
            <!--close content_container-->		
		    <!--close content_container-->
          <div class="content_container">
		      <!--close button_small-->		  
		  </div><!--close content_container-->			  
		</div>
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
          <br />
          <br />
          <!--close content_item-->
      </div><!--close content-->   
	    <!--close content_beige--> 	
	</div><!--close site_content--> 
  
  </div><!--close main-->
  
        <!--close footer-->  
  
    </form>
  
</body>
</html>
