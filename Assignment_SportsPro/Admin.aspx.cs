using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assignment_SportsPro
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\project.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnaddcategory_Click(object sender, EventArgs e)
        {
            //string cat = txtcategory.Text;
            //string ins = "insert into categories (Category_Name)values ("+cat+")";
            //SqlCommand com = new SqlCommand(ins, con);
            //con.Open();
            //com.ExecuteNonQuery();
            //con.Close();
            //Response.Redirect("Admin");

        }
    }
}