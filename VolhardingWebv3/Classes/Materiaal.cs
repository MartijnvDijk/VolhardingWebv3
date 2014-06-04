using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Materiaal
    {
        public Team Team { get; set; }
        public string Naam { get; set; }
        public int Aantal { get; set; }

        public Materiaal()
        {

        }

        public void MateriaalToevoegen(string naam, int aantal, Team team)
        {

        }
    }
}