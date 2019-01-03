using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaliSahaUygulamasi
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullaniciAdi"] != null)
            {
                Response.Write(Session["kullaniciAdi"]);
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }
        protected void Cikis(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}