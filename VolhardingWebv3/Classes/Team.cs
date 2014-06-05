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
        public List<string> TeamLijst { get; set; }

        TeamDB db = new TeamDB();

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
        {
            Materialen.Add(materiaal);
        }

        public void SpelerToevoegen(Speler speler)
        {
            SpelerLijst.Add(speler);
        }

        public string SelecteerTeam(string naam)
        {
            foreach (string t in TeamLijst)
            {
                if (t == naam)
                {
                    return t;
                }
            }
            throw new NotImplementedException();
        }

        public List<string> TeamLijstInvullen()
        {
            TeamLijst = db.GeefAlleTeams();
            return TeamLijst;
        }
    }
}