using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 
using WebApplication1;
namespace WebApplication1
{
    public partial class alumni : System.Web.UI.Page
    {  
        
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1967; i <= DateTime.Now.Year-1; i++)
            {
                yop.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void lgnsubmit_Click(object sender, EventArgs e)
        {
            new SSHNclass().insert("insert into alumni details values('" + firstname.Text + "','" + lastname.Text + "','" + datepicker.Text + "','" + gender.Text + "','" + yop.Text + "','" + group.Text + "','" + maritalstatus.Text + "','" + mailid.Text + "','" + phonenumber.Text + "','" + designation.Text + "','" + orgnstn.Text + "','" + Crntlctn.Text + "','" + address.Text + "')");
			firstname.Text="";
			lastname.Text ="";
			datepicker.Text="";
			gender.SelectedIndex = 0;
			yop.SelectedIndex = 0;
			group.SelectedIndex = 0;
			maritalstatus.SelectedIndex = 0;
			mailid.Text="";           
			phonenumber.Text="";
			designation.Text="";
			orgnstn.Text="";
			Crntlctn.Text="";
			address.Text="";
            Response.Write("Your Registration is Successfull,Thanks");			
        }
       
    }
}