﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Manjeet_Kumar_BookStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text;
            Session["LastName"] = txtLastName.Text;
            Response.Redirect("Products.aspx");
        }
    }
}