using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_SportsPro
{
    public class CartItemsList
    {
        private List<CartItems> cartItems;

        public CartItemsList()
        {
            cartItems = new List<CartItems>();
        }

        public int Count
        {
            get { return cartItems.Count; }
        }

        public CartItems this[int index]
        {
            get { return cartItems[index]; }
        }

        public CartItems this[string id]
        {
            get
            {
                foreach (CartItems c in cartItems)
                    if (c.Product.Desc_Id == id) return c;
                return null;
            }
        }

        public static CartItemsList GetCart()
        {
            CartItemsList cart = (CartItemsList)HttpContext.Current.Session["Cart"];
            if (cart == null)
                HttpContext.Current.Session["Cart"] = new CartItemsList();
            return (CartItemsList)HttpContext.Current.Session["Cart"];
        }

        public void AddItem(Products product, int quantity)
        {
            CartItems c = new CartItems(product, quantity);
            cartItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            cartItems.RemoveAt(index);
        }

        public void Clear()
        {
            cartItems.Clear();
        }
    }
}