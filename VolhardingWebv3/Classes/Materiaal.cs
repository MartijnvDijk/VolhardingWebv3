using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.DataAccess;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Data;
using System.Text;
using System.Web.UI;
using System.Collections.Specialized;

namespace VolhardingWebv3.Classes
{
    public class Materiaal
    {
        public Team Team { get; set; }
        public string Naam { get; set; }
        public int Aantal { get; set; }
        Manager m = new Manager();

        public Materiaal()
        {

        }

        public void MateriaalToevoegen(StringCollection sc)
        {
            OracleConnection conn = new OracleConnection();

            StringBuilder sb = new StringBuilder(string.Empty);
            string[] splitItems = null;
            foreach (string item in sc)
            {

                const string query = "INSERT INTO MATERIAAL (Column1,Column2,Column3) VALUES";
                if (item.Contains(","))
                {
                    splitItems = item.Split(",".ToCharArray());
                    sb.AppendFormat("{0}('{1}','{2}','{3}'); ", query, splitItems[0], splitItems[1], splitItems[2]);
                }

            }

            try
            {
                m.Open();   
                OracleCommand cmd = new OracleCommand(sb.ToString(), conn);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

            }
            catch (OracleException ex)
            {

            }
            finally
            {
                conn.Close();
            }
        }
    }
}