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
          <li><a href="Login.aspx"><asp:Label ID="LblLogin" runat="server" Text="Label"></asp:Label></a></li>
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
              <asp:SqlDataSource ID="SqlDataSourceWedstrijden" runat="server" ConnectionString="<%$ ConnectionStrings:DBI296112.fhictora %>" ProviderName="<%$ ConnectionStrings:DBI296112.fhictora.ProviderName %>" SelectCommand="SELECT &quot;DATUM&quot;, &quot;AANVANG&quot;, &quot;VERTREK&quot;, &quot;TEAMTHUIS&quot;, &quot;TEAMUIT&quot;, &quot;SCHEIDSINFO&quot; FROM &quot;PROGRAMMA&quot;"></asp:SqlDataSource>
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
		      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceStand" Width="898px">
                  <Columns>
                      <asp:BoundField DataField="STAND" HeaderText="STAND" SortExpression="STAND" />
                      <asp:BoundField DataField="TEAMNAAM" HeaderText="TEAMNAAM" SortExpression="TEAMNAAM" />
                      <asp:BoundField DataField="GS" HeaderText="GS" SortExpression="GS" />
                      <asp:BoundField DataField="WN" HeaderText="WN" SortExpression="WN" />
                      <asp:BoundField DataField="GL" HeaderText="GL" SortExpression="GL" />
                      <asp:BoundField DataField="VL" HeaderText="VL" SortExpression="VL" />
                      <asp:BoundField DataField="PT" HeaderText="PT" SortExpression="PT" />
                      <asp:BoundField DataField="VR" HeaderText="VR" SortExpression="VR" />
                      <asp:BoundField DataField="TG" HeaderText="TG" SortExpression="TG" />
                      <asp:BoundField DataField="PM" HeaderText="PM" SortExpression="PM" />
                  </Columns>
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSourceStand" runat="server" ConnectionString="<%$ ConnectionStrings:DBI296112.fhictora %>" ProviderName="<%$ ConnectionStrings:DBI296112.fhictora.ProviderName %>" SelectCommand="SELECT &quot;STAND&quot;, &quot;TEAMNAAM&quot;, &quot;GS&quot;, &quot;WN&quot;, &quot;GL&quot;, &quot;VL&quot;, &quot;PT&quot;, &quot;VR&quot;, &quot;TG&quot;, &quot;PM&quot; FROM &quot;STAND&quot;"></asp:SqlDataSource>
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
