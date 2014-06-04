using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebv3.GUI
{
    public partial class Team : System.Web.UI.Page
    {
        Classes.Manager manager = new Classes.Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LblTest.Text = "Ingelogd als " + Session["Gebruikersnaam"].ToString() + " , Uitloggen";
        }
    }
}