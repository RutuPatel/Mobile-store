using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_SportsPro
{
    public class CartItems
    {
        public CartItems() { }

        public CartItems(Products product, int quantity)
        {
            this.Product = product;
            this.Quantity = quantity;
        }

        public Products Product { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string displayString = string.Format("{0} {1} ({2} at {3})", Product.Model,Product.Storage, Quantity.ToString(), Product.Price.ToString());
            return displayString;
        }
    }
}