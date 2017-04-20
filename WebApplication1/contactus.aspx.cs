using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace WebApplication1
{
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void emailsnd_Click(object sender, EventArgs e)
        {
            textalert.Text = new SSHNclass().sendemail(sendermailid.Text.ToString(), subject.Text.ToString(), message.Text.ToString(), sendername.Text.ToString(),senderphonenum.Text.ToString());
        }
    }
}