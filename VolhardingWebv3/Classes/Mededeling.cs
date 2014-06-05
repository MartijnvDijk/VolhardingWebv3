using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Mededeling
    {
        public Manager Manager { get; set; }
        public Media Media { get; set; }
        public string Titel { get; set; }
        public string Inhoud { get; set; }
        public List<Mededeling> Mededelingen { get; set; }

        public Mededeling(string titel, string inhoud)
        {
            this.Titel = titel;
            this.Inhoud = inhoud;
        }

        public Mededeling()
        { }

        public void MededelingToevoegen(Mededeling mededeling)
        {
            Mededelingen.Add(mededeling);
        }

        public string[] GeefMededlingen()
        {
            OracleConnection con = new OracleConnection();
            string[] mededelingen = new string[3];
            string query = "SELECT INHOUD FROM MEDEDELING";
            OracleCommand oc = new OracleCommand(query, con);
            OracleDataReader reader = oc.ExecuteReader();
            reader = oc.ExecuteReader();

            int i = 0;
            while (reader.Read())
            {

                mededelingen[i] = reader.GetString(0);
                i++;
            }
            return mededelingen;
        }
    }
}