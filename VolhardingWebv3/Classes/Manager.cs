using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

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
        private OracleConnection con;
        public void Database()
        {
            con = new OracleConnection();
        }

        public void Connect()
        {
            String pcn = "ORACLE";
            String pw = "jeroen10";
            con.ConnectionString = "User Id=" + pcn + ";Password=" + pw + ";Data Source=" + "localhost:1521/xe" + ";";
            con.Open();
            Console.WriteLine("Connected to Oracle" + con.ServerVersion);
        }

        public void Close()
        {
            con.Close();
            con.Dispose();
        }

        public Speler Topscorer { get; set; }
        public int TopscrorerAantalDoelpunten { get; set; }

        public Manager()
        { }

        public void UpdateTopscorer(Speler topscrorer, int doelpunten)
        { }
    }
}