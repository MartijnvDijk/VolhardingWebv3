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
    public class WedstrijdDB
    {
        Manager m = new Manager();
        public WedstrijdDB()
        { }
        public List<string> GeefAlleWedstrijden()
        {
            List<string> resultaten = new List<string>();
            this.m.NewConnection();
            this.m.Connect();
            this.m.Open();
            string query = "SELECT * FROM COMPETITIE";
            OracleCommand oc = new OracleCommand(query, this.m.ReturnNewConnection());
            OracleDataReader reader = oc.ExecuteReader();
            while (reader.Read())
            {

                    resultaten.Add(reader.GetString(0));

            }
            return resultaten;

        }
    }
}