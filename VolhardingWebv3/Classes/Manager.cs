using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;

namespace VolhardingWebv3.Classes
{
    enum Spullen
    {
        Bal,
        Pion,
        Shirt
    }
    public class Manager
    {
        public Speler Topscorer { get; set; }
        public int TopscrorerAantalDoelpunten { get; set; }

        public Manager()
        { }

        public void UpdateTopscorer(Speler topscrorer, int doelpunten)
        { }

        private OracleConnection con = new OracleConnection();

        /// <summary>
        /// Verbinding met de oracle server wordt aangemaakt.
        /// </summary>
        public void Connect()
        {
            String pcn = "dbi296122";
            String pw = "WXyvnFFvL2";
            con.ConnectionString = "User Id=" + pcn + ";Password=" + pw + ";Data Source=" + "fhictora01.fhict.local:1521/fhictora" + ";"; con.Open();
            Console.WriteLine("Connected to Oracle" + con.ServerVersion);
        }

        /// <summary>
        /// Connectie wordt gesloten.
        /// </summary>
        public void Close()
        {
            con.Close();
            con.Dispose();
        }

        public bool UserLogin(string un, string pw)
        {
            OracleCommand cmd = new OracleCommand("Select username from account where username=@un and password=@pw", con);
            cmd.Parameters.Add("@un", un);
            cmd.Parameters.Add("@pw", pw);
            string result = Convert.ToString(cmd.ExecuteScalarAsync());
            if (String.IsNullOrEmpty(result))
            {
                return false;
            }
            else
            { 
                return true;
            }
        }
    }
}