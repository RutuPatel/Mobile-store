using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_SportsPro
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            if (usertxt.Text == "Admin" && passtxt.Text == "123")
            {
                Response.Redirect("Admin");
            }
            else
            {
                Response.Redirect("Home");
            }
           
        }
    }
}