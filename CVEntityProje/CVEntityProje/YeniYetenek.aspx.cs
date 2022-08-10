using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProje
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            TBLYETENEKLER t = new TBLYETENEKLER();
            t.YETENEK = txtAd.Text;
            t.DERECE = Convert.ToInt32(txtDerece.Text);
            db.TBLYETENEKLER.Add(t);
            db.SaveChanges();

            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}