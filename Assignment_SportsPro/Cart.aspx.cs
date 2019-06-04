using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Assignment_SportsPro;

namespace Assignment_SportsPro
{
    public partial class Cart : System.Web.UI.Page
    {
        private CartItemsList cart;
        protected void Page_Load(object sender, EventArgs e)
        {
            // retrieve cart object from session state on every postback
            cart = CartItemsList.GetCart();
            // on initial page load, add cart items to list control
            if (!IsPostBack) this.DisplayCart();
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // if cart contains items and user has selected an item…
            if (cart.Count > 0)
            {
                if (lstCart.SelectedIndex > -1)
                {
                    // remove selected item from cart and re-display cart
                    cart.RemoveAt(lstCart.SelectedIndex);
                    this.DisplayCart();
                }
                else
                { // if no item is selected, notify user
                    lblMessage.Text = "Please select the item to remove.";
                }
            }
        }
        private void DisplayCart()
        {
            // remove all current items from list control
            lstCart.Items.Clear();
            // loop through cart and add each item's display value to the list
            for (int i = 0; i < cart.Count; i++)
            {
                lstCart.Items.Add(cart[i].Display());
            }
        }
        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            // if cart has items, clear both cart and list control
            if (cart.Count > 0)
            {
                cart.Clear();
                lstCart.Items.Clear();
            }
        }
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Work in Progress";
        }
        protected void btnContinue_Click(object sender, EventArgs e)
        {

        }
    }
}