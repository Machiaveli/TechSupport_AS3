using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HLTHIR403C_CHCCS411C_AS3.SupportOfficer
{
    public partial class addIncident : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddIncident_Click(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.DataSourceID = "SqlDataSource2";
            DropDownList2.DataBind();
        }

    }
}