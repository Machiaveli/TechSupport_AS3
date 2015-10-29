using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HLTHIR403C_CHCCS411C_AS3.Admin
{
    public partial class addCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            dLStates.Items.Clear();
            dLStates.DataSourceID = "SqlDataSource2";
            dLStates.DataBind();
        }

        protected void dLCountries_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}