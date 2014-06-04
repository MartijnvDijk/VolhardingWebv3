using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Team
    {
                public Competitie Competitie { get; set; }
        public Materiaal Materiaal { get; set; }
        public Speler Speler { get; set; }
        public string Naam { get; set; }
        public List<Materiaal> Materialen { get; set; }
        public List<Speler> SpelerLijst { get; set; }
        public List<Team> TeamLijst { get; set; }

        public Team(Competitie competitie, string naam)
        {
            this.Competitie = competitie;
            this.Naam = naam;
        }
        public Team()
        {

        }
        public Team(string naam)
        {
            this.Naam = naam;
        }

        public void MateriaalToevoegen(Materiaal materiaal)
        { }

        public void SpelerToevoegen(Speler speler)
        { }

        public Team SelecteerTeam(string naam)
        {
            foreach (Team t in TeamLijst)
            {
                if (t.Naam == naam)
                {
                    return t;
                }
            }
            throw new NotImplementedException();
        }
    }
}