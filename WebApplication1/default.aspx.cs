﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebApplication1
{
    public partial class @default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new SSHNclass().bindresult("select * from alumnidetails");
            searchgrid.DataSource = ds;
            searchgrid.DataBind();
            
            
        }
    }
}