using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebv3.GUI
{
    public partial class Media : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            LblLogin.Text = Session["Gebruikersnaam"].ToString() + " , Uitloggen";

            ImageSponsor1.ImageUrl = "http://www.vanessendiervoeders.nl/wp-content/uploads/2013/12/havens-paardenvoer.jpg";
            ImageSponsor1.Width = 160;
            ImageSponsor1.Height = 80;

            ImageSponsor2.ImageUrl = "http://www.deleukstewinkelsvannederland.nl/images/winkel/large/825/large.jpg";
            ImageSponsor2.Width = 160;
            ImageSponsor2.Height = 80;

            ImageSponsor3.ImageUrl = "http://www.safe-products.nl/contents/media/sport_lavit_logo.jpg";
            ImageSponsor3.Width = 160;
            ImageSponsor3.Height = 80;
        }
    }
}