using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VolhardingWebv3.Classes
{
    public class Media
    {
        public Mededeling Mededeling { get; set; }
        public List<string> Links { get; set; }

        public Media()
        {
 
        }

        public void LinkToevoegen(string link)
        {
            Links.Add(link);
        }

        public void LinkVerwijderen(string link)
        {
            Links.Remove(link);
        }


    }
}