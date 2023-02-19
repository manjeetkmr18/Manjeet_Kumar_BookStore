using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Manjeet_Kumar_BookStore
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["FirstName"] == null && Session["LastName"] == null)
                {
                    Session["FirstName"] = "";
                    Session["LastName"] = "";
                    lblUSerName.Text = "";
                }
                else
                {

                    lblUSerName.Text = "Welcome " + Session["FirstName "] + Session["LastName"];
               
                }
            }

        }
    }
}