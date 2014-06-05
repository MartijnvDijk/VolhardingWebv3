using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebv3.GUI
{
    public partial class Wedstrijdinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LblLogin.Text = Session["Gebruikersnaam"].ToString() + " , Uitloggen";
        }
    }
}