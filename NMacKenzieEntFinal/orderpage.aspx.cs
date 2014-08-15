using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NMacKenzieEntFinal
{
    public partial class orderpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }

            getCustomers();
            getShippers();

            txtProductID.Text = Request.QueryString["ProductID"];
            txtProductName.Text = Request.QueryString["ProductName"];
            txtProductPrice.Text = Request.QueryString["UnitPrice"];
        }

        protected void getCustomers()
        {
            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data = from Customer in objEnt.Customers
                           orderby Customer.CompanyName
                           select Customer;

                ddlCustomers.DataSource = data.ToList();
                ddlCustomers.DataBind();
            }
        }

        protected void getShippers()
        {
            using (NorthwindEntities objEnt = new NorthwindEntities())
            {
                var data = from Shipper in objEnt.Shippers
                           orderby Shipper.CompanyName
                           select Shipper;
                ddlShippers.DataSource = data.ToList();
                ddlShippers.DataBind();

            }
        }

        protected void btnSaveOrder_Click(object sender, EventArgs e)
        {

        }


    }
}