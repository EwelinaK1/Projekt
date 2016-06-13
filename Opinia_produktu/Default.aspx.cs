using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opinia_produktu
{
    public partial class Default : System.Web.UI.Page
    {
        const string nazwaZmiennej_Wpisy = "wpisy";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Application[nazwaZmiennej_Wpisy] == null)
                Application.Add(nazwaZmiennej_Wpisy, new List<string>());
            else
                WyswietlanieWpisow();
        }

        private void WyswietlanieWpisow()
        {
            List<string> wpisy = (List<string>)Application[nazwaZmiennej_Wpisy];
            string trescWpisow = "";
            foreach (string wpis in wpisy) trescWpisow += wpis;
            Label1.Text = trescWpisow;
        }

        const string KolorParzysty = "red";
        const string KolorNieparzysty = "green";
        private static string KolorNaglowka(int numerWpisu)
        {
            return (numerWpisu % 2 == 0) ? KolorParzysty : KolorNieparzysty;

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || ocena.Text=="") return;
            List<string> wpisy = (List<string>)Application[nazwaZmiennej_Wpisy];

            string naglowek = "<font color='" + KolorNaglowka(wpisy.Count)
                + "'><b> Dodano dnia" + DateTime.Now.ToString() + "</b></font>";

            string nazwa = "<i>" + TextBox2.Text + "</i>";
            string zalety = TextBox3.Text.Trim().Replace("\n", "<br/>");
            string wady = TextBox4.Text.Trim().Replace("\n", "<br/>");
            string podpis = "<i>" + TextBox1.Text + "</i>(" + this.Request.UserHostAddress + ")";
            string ocena1 = ocena.Text.Trim().Replace("\n", "<br/>");

           
            string nowyWpis = naglowek +"<br/>" +"Nazwa produktu:" + nazwa + "<br/>"+"Ocena:"+ "<br/>"+ocena1 +"<br/>" +"Zalety:"+zalety+"<br/>"+"Wady:"
                +wady+ "<br/>" + podpis + "<p>";
            nowyWpis += "<hr width='40%>align='left'>";
            wpisy.Add(nowyWpis);
            WyswietlanieWpisow();

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            ocena.Text = "";
        }
    }
}