using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebv3.GUI
{
    public partial class Login : System.Web.UI.Page
    {
        Classes.Manager manager = new Classes.Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            manager.NewConnection();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            manager.Connect();
            string un = Login1.UserName;
            string pw = Login1.Password;
            bool result = manager.UserLogin2(un,pw);
            if (result)
            {
                e.Authenticated = true;
                Session["Gebruikersnaam"] = un;
            }
            else
            {
                e.Authenticated = false;
            }
            manager.Close();
        }
    }
}