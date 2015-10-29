using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HLTHIR403C_CHCCS411C_AS3.Admin
{
    public partial class newCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void linkInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["FirstName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtfName")).Text;

            SqlDataSource1.InsertParameters["LastName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtlName")).Text;

            SqlDataSource1.InsertParameters["Address"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtAddress")).Text;

            SqlDataSource1.InsertParameters["City"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtCity")).Text;

            SqlDataSource1.InsertParameters["State"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtState")).Text;

            SqlDataSource1.InsertParameters["ZipCode"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtZipCode")).Text;

            SqlDataSource1.InsertParameters["Phone"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtPhone")).Text;

            SqlDataSource1.InsertParameters["Email"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtEMail")).Text;

            SqlDataSource1.Insert();

 
        }


    }
}