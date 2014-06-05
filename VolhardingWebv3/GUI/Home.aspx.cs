using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VolhardingWebv3.GUI
{
    public partial class Home : System.Web.UI.Page
    {
        Classes.Mededeling mededeling;
        Classes.Manager manager = new Classes.Manager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LblLogin.Text = Session["Gebruikersnaam"].ToString() + " , Uitloggen";

            //manager.NewConnection();
            //manager.Connect();
            //mededeling = new Classes.Mededeling();
            //string[] mededelingen = mededeling.GeefMededlingen();
            //manager.Close();

            //LblMed1.Text = mededelingen[0];
            //LblMed2.Text = mededelingen[1];
            //LblMed3.Text = mededelingen[2];
            //LblMed4.Text = mededelingen[3];

            DropDownListMededelingen.Items.Add("Med1");
            DropDownListMededelingen.Items.Add("Med2");
            DropDownListMededelingen.Items.Add("Med3");
            DropDownListMededelingen.Items.Add("Med4");
        }

        protected void BtnBevestigMed_Click(object sender, EventArgs e)
        {
            mededeling = new Classes.Mededeling(TbTitel.Text, TbMed.Text);
        }
    }
}