using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HLTHIR403C_CHCCS411C_AS3.Technician
{
    public partial class searchCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            

        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            txtCustIDSearch.Text = "";
        }

        protected void txtCustIDSearch_TextChanged(object sender, EventArgs e)
        {
            txtSearch.Text = "";
        }
    }
}