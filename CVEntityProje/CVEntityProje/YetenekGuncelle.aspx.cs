using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProje
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            if(Page.IsPostBack == false)
            {
                var deger = db.TBLYETENEKLER.Find(id);
                txtAd.Text = deger.YETENEK;
                txtDerece.Text = deger.DERECE.ToString();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            if(int.Parse(txtDerece.Text) > 100)
            {
                Label1.Visible = true;
                Label1.Text = "100 Dereceden fazla değer yazamazsınız";
            }
            else
            {
                var deger = db.TBLYETENEKLER.Find(id);
                deger.YETENEK = txtAd.Text;
                deger.DERECE = Convert.ToInt32(txtDerece.Text);
                db.SaveChanges();

                Response.Redirect("Yeteneklerim.aspx");
            }
            
        }
    }
}