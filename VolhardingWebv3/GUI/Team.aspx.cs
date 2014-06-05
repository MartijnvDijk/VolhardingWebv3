using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;
using System.Collections.Specialized;

namespace VolhardingWebv3.GUI
{
    public partial class Team : System.Web.UI.Page
    {
        private OracleConnection con = new OracleConnection();
        Classes.Manager manager = new Classes.Manager();
        Classes.Materiaal materiaal = new Classes.Materiaal();
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownListNaam.DataSource = Enum.GetValues(typeof(Classes.Spullen));
            DropDownListNaam.DataBind();

            if (!IsPostBack)
                LblLogin.Text = Session["Gebruikersnaam"].ToString() + " , Uitloggen";
        }

        protected void BtnMateriaalToevoegen_Click(object sender, EventArgs e)
        {
            //manager.NewConnection();
            //string aantal = TbAantal.Text;
            //string naam = DropDownListNaam.SelectedItem.Text;
            //string teamnaam = DropDownListTeamnaam.SelectedItem.Text;
            //OracleCommand cmd = new OracleCommand("INSERT INTO MATERIAAL VALUES(3,1,:aantal,:naam,:teamnaam)", con);
            //cmd.Parameters.Add(":aantal", aantal);
            //cmd.Parameters.Add(":naam", naam);
            //cmd.Parameters.Add(":teamnaam", teamnaam);

            StringCollection sc = new StringCollection();
            if (ViewState["HuidigeTable"] != null)
            {
                DataTable dtHuidigeTable = (DataTable)ViewState["HuidigeTable"];
                        sc.Add(TbAantal.Text + "," + DropDownListNaam.SelectedItem.Text + "," + DropDownListTeamnaam.SelectedItem.Text);
                    materiaal.MateriaalToevoegen(sc);
            }
        }
    }
}