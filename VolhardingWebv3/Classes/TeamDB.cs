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
    public class TeamDB
    {
        Manager m = new Manager();
        public List<string> GeefAlleTeams()
        {
            List<string> resultaten = new List<string>();
            m.Connect();
            string query = "SELECT NAAM FROM TEAM";
            OracleCommand oc = new OracleCommand(query, m.ReturnNewConnection());
            m.Open();
            OracleDataReader reader = oc.ExecuteReader();
            while (reader.Read())
            {

                resultaten.Add(reader.GetString(0));

            }
            return resultaten;
        }
    }
}