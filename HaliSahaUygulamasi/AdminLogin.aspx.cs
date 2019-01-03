using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HaliSahaUygulamasi
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYoneticiLoginClick(object sender, EventArgs e)
        {
            
            ServiceReference1.WebService1SoapClient web = new ServiceReference1.WebService1SoapClient();
            string isim = web.yoneticiAdSoyadGetir(mail.Text);
            bool result = web.yoneticiLogin(mail.Text, password.Text);
            if (result == true)
            {
                
                Session.Add("kullaniciAdi", isim);
                Session.Timeout = 2 ;
                Response.Redirect("Admin.aspx?isim="+Session["kullaniciAdi"]);
            }
            else
            {
                LabelLogin.Text = "Yönetici girişi hatalı lütfen tekrar deneyiniz.";
                LabelLogin.Visible = true;
            }
        }
    }
}