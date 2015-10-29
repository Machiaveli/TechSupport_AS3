using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HLTHIR403C_CHCCS411C_AS3.SupportOfficer
{
    public partial class SupportOfficerHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblHiddenUserName.Visible = false;
            lblHiddenUserName.Text = User.Identity.Name.ToString();
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (dropDownSearchFilter.SelectedValue.ToString().Trim().Equals("customerID"))
            {
                GridView1.DataSourceID = "";
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
            else if (dropDownSearchFilter.SelectedValue.ToString().Trim().Equals("customerLastName"))
            {
                GridView1.DataSourceID = "";
                GridView1.DataSource = SqlDataSourceSearchByCustLastName;
                GridView1.DataBind();   
            }
        }
    }
}