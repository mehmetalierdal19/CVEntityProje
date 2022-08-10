using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProje
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            var deger = db.TBLILETISIM.Find(id);
            txtAd.Text = deger.ADSOYAD;
            txtKonu.Text = deger.KONU;
            txtMail.Text = deger.MAIL;
            txtMesaj.Text = deger.MESAJ;
        }
    }
}