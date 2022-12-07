using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (Auto a in Auto.GetAuto())
                {
                    ListItem a1 = new ListItem(a.NomeAuto, a.Id.ToString());
                    ElencoAuto.Items.Add(a1);
                }
            }
        }

        public class Auto
        {
            public int Id { get; set; }
            public string NomeAuto { get; set; }
            public decimal PrezzoAuto { get; set; }

            public static List<Auto> GetAuto()
            {
                List<Auto> list = new List<Auto>();

                Auto auto1 = new Auto { Id = 1, NomeAuto = "Jeep Renegade 1.6 131CV", PrezzoAuto = 34550m };
                Auto auto2 = new Auto { Id = 2, NomeAuto = "Jeep Compass 1.6 150 CV", PrezzoAuto = 33800m };
                Auto auto3 = new Auto { Id = 3, NomeAuto = "Jeep Compass 1.4 190 CV 4xe", PrezzoAuto = 47100m };
                Auto auto4 = new Auto { Id = 4, NomeAuto = "Jeep Wrangler 80 anniversario", PrezzoAuto = 64500m };

                list.Add(auto1);
                list.Add(auto2);
                list.Add(auto3);
                list.Add(auto4);
                return list;
            }
        }
    }
}