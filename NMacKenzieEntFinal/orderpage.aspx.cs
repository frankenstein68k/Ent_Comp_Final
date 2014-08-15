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
            //Testing
            Label2.Text = Request.QueryString["ProductID"];
            Label4.Text = Request.QueryString["UnitPrice"];
        }
    }
}