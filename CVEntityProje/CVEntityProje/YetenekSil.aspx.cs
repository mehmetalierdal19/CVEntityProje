using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CVEntityProje
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        DBCVENTITYEntities db = new DBCVENTITYEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"].ToString());
            var deger = db.TBLYETENEKLER.Find(id);
            db.TBLYETENEKLER.Remove(deger);
            db.SaveChanges();

            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}