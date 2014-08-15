using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NMacKenzieEntFinal
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) 
       {
           if (!IsPostBack)
           {
               getProducts();
           }
        }

        protected void getProducts()
        {
            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data = from Product in objEnt.Products
                           orderby Product.ProductName
                           select Product;

                ddlProducts.DataSource = data.ToList();
                ddlProducts.DataBind();
            }
        }


        protected void getAndDisplayProductPrice()
        {
            //Variables to hold the product ID
            int productIDint;
            string productIDstr;

            //Chanegs variables to more useful types
            productIDstr = ddlProducts.SelectedValue;
            productIDint = int.Parse(productIDstr);

            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data2 = from Product in objEnt.Products
                           where Product.ProductID == productIDint
                           select Product;

                ddlProductPrice.DataSource = data2.ToList();
                ddlProductPrice.DataBind();
            }

            //testing
            //lblProductPrice.Text = productIDstr;
            
        }

        protected void btnUpdatePrice_Click(object sender, EventArgs e)
        {
            getAndDisplayProductPrice();
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            //redirects user and two values to next pages (productId and Unit price)
            Response.Redirect("~/orderpage.aspx?ProductID=" + ddlProducts.SelectedValue + "&UnitPrice=" + ddlProductPrice.Text);

        }
    }
}