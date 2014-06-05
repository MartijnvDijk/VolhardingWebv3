using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Wedstrijd
    {
        public Manager Manager { get; set; }
        public DateTime Datum { get; set; }
        public string Aanvang { get; set; }
        public string Vertrek { get; set; }
        public string TeamThuis { get; set; }
        public string TeamUit { get; set; }
        public string Scheidsinfo { get; set; }
        public int DoelpuntThuis { get; set; }
        public int DoelpuntUit { get; set; }
        public List<Wedstrijd> WedstrijdLijst { get; set; }

        WedstrijdDB db = new WedstrijdDB();

        public Wedstrijd(DateTime datum, string aanvang, string vertrek, string teamThuis, string teamUit, string scheidsinfo)
        {
            this.Datum = datum;
            this.Aanvang = aanvang;
            this.Vertrek = vertrek;
            this.TeamThuis = teamThuis;
            this.TeamUit = teamUit;
            this.Scheidsinfo = scheidsinfo;
        }

        public void WedstrijdToevoegen(Wedstrijd wedstrijd)
        {
            WedstrijdLijst.Add(wedstrijd);
        }

        public void AlleWedstrijden()
        {
            db.GeefAlleWedstrijden();
        }
    }
}