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
            SqlDataSource3.InsertParameters["FirstName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtfName")).Text;

            SqlDataSource3.InsertParameters["LastName"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtlName")).Text;

            SqlDataSource3.InsertParameters["Address"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtAddress")).Text;

            SqlDataSource3.InsertParameters["City"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtCity")).Text;

            SqlDataSource3.InsertParameters["State"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtState")).Text;

            SqlDataSource3.InsertParameters["ZipCode"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtZipCode")).Text;

            SqlDataSource3.InsertParameters["Phone"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtPhone")).Text;

            SqlDataSource3.InsertParameters["Email"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtEMail")).Text;

            SqlDataSource3.Insert();

 
        }


    }
}