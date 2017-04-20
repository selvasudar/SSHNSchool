using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logon_click(object sender, EventArgs e)
        {
            if (FormsAuthentication.Authenticate(useremail.Text,paswrd.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(useremail.Text,false);
               HttpCookie cookie = new HttpCookie(".ASPNETAUTH");
               cookie.Secure = true;
            }
            else {
                Response.Redirect("login.aspx");
            }
        }

    }
}