using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Speler
    {
        public Team Team { get; set; }
        public string Naam { get; set; }
        public DateTime GeboorteDatum { get; set; }
        public string Woonplaats { get; set; }
        public string Adres { get; set; }

        public Speler(string naam, DateTime geboorteDatum, string woonplaats, string adres)
        {
            this.Naam = naam;
            this.GeboorteDatum = geboorteDatum;
            this.Woonplaats = woonplaats;
            this.Adres = adres;
        }
    }
}