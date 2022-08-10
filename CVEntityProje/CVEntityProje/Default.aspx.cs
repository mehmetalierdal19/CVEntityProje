using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProje
{
    public partial class Default : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater3.DataBind();
            Repeater4.DataSource = db.TBLYETENEKLER.ToList();
            Repeater4.DataBind();
            Repeater5.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater5.DataBind();
            Repeater6.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater6.DataBind();
        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            TBLILETISIM t = new TBLILETISIM();
            t.ADSOYAD = txtAd.Text;
            t.KONU = txtKonu.Text;
            t.MAIL = txtMail.Text;
            t.MESAJ = txtMesaj.Text;
            db.TBLILETISIM.Add(t);
            db.SaveChanges();
        }

        protected void btnVazgec_Click(object sender, EventArgs e)
        {
            txtAd.Text = "";
            txtKonu.Text = "";
            txtMail.Text = "";
            txtMesaj.Text = "";
        }
    }
}