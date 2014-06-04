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
        { }

        public void MededelingToeveogen(Mededeling mededeling)
        { }
    }
}