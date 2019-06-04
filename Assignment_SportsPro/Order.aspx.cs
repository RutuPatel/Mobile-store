using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Assignment_SportsPro
{
    public partial class Order : System.Web.UI.Page
    {
        private Products  selectedMobile;
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //bind dropdown on first load
            if (!IsPostBack)            
                ddlMobile.DataBind();
            
            // get and show product data on every load   
            selectedMobile = this.GetSelectedMobile();
            lblModel.Text = selectedMobile.Model;
            lblStorage.Text = selectedMobile.Storage.ToString();
            lblColor.Text = selectedMobile.Color;
            lblCamera.Text = selectedMobile.Camera;
            lblProcessor.Text = selectedMobile.Processor;
            lblRam.Text = selectedMobile.Ram;
            lblScreen.Text = selectedMobile.Screen;
            lblOs.Text = selectedMobile.OS;
            lblPrice.Text ="$"+ selectedMobile.Price;
            imgmobile.ImageUrl = "Image/Phones/" + selectedMobile.Image+".jpg";

        }
        private Products GetSelectedMobile()
        {
            //get row from Database based on value in dropdownlist
            DataView productsTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = string.Format("Desc_Id = '{0}'",
            ddlMobile.SelectedValue);
            DataRowView row = productsTable[0];
            //create a new customer object and get data from row
            Products p = new Products();
            p.Model = row["Model"].ToString();
            p.Storage = row["Storage"].ToString();
            p.Color = row["Color"].ToString();
            p.Camera = row["Camera"].ToString();
            p.Processor = row["Processor"].ToString();
            p.Ram = row["Ram"].ToString();
            p.Screen = row["Screen"].ToString();
            p.OS = row["OS"].ToString();
            p.Price = row["Price"].ToString();
            p.Image = row["Image"].ToString();
            return p;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                //get cart from session state and selected item from cart
                CartItemsList cart = CartItemsList.GetCart();

                if (selectedMobile != null)
                {
                    cart.AddItem(selectedMobile,Convert.ToInt32(txtQuantity.Text));
                    Response.Redirect("~/Cart.aspx");
                }
               
            }
        }
    }
}