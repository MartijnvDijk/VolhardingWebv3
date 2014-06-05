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

            StartMededelingen();

            //mededeling = new Classes.Mededeling();
            //string[] mededelingen = mededeling.GeefMededlingen();
            //manager.Close();

            //LblMed1.Text = mededelingen[0];
            //LblMed2.Text = mededelingen[1];
            //LblMed3.Text = mededelingen[2];
            //LblMed4.Text = mededelingen[3];

            if(Session["Gebruikersnaam"].ToString() != "admin")
            {
                TbTitel.Visible = false;
                TbMed.Visible = false;
                DropDownListMededelingen.Visible = false;
            }

            if (DropDownListMededelingen.Enabled == true)
            {
                DropDownListMededelingen.Items.Clear();
                DropDownListMededelingen.Items.Add("Med1");
                DropDownListMededelingen.Items.Add("Med2");
                DropDownListMededelingen.Items.Add("Med3");
                DropDownListMededelingen.Items.Add("Med4");
            }
        }

        protected void BtnBevestigMed_Click(object sender, EventArgs e)
        {
            mededeling = new Classes.Mededeling(TbTitel.Text, TbMed.Text);
            if (DropDownListMededelingen.SelectedItem.Text == "Med1")
            {
                Session["med1"] = TbMed.Text;
                LblMed1.Text = TbMed.Text;
            }
            else if (DropDownListMededelingen.SelectedItem.Text == "Med2")
            {
                Session["med2"] = TbMed.Text;
                LblMed1.Text = TbMed.Text;
            }
            else if (DropDownListMededelingen.SelectedItem.Text == "Med3")
            {
                Session["med3"] = TbMed.Text;
                LblMed3.Text = TbMed.Text;
            }
            else
            {
                Session["med4"] = TbMed.Text;
                LblMed4.Text = TbMed.Text;
            }
        }

        private void StartMededelingen()
        {
            if (Session["med1"] != null)
            {
                LblMed1.Text = Session["med1"].ToString();
            }
            if (Session["med2"] != null)
            {
                LblMed2.Text = Session["med2"].ToString();
            }
            if (Session["med3"] != null)
            {
                LblMed3.Text = Session["med3"].ToString();
            }
            if (Session["med4"] != null)
            {
                LblMed4.Text = Session["med4"].ToString();
            }
        }
    }
}