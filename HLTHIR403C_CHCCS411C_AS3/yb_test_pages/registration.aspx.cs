using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;

namespace HLTHIR403C_CHCCS411C_AS3
{
    public partial class registration1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void CreateUserWizard1_CreatedUser1(object sender, EventArgs e)
        {

                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

                //conn.Open();
                //string insertq = "Insert into Users (FirstName, UserType) values (@fname, @usertype)";

                //SqlCommand com = new SqlCommand(insertq, conn);

                //com.Parameters.AddWithValue("@fname", 5556);
                //com.Parameters.AddWithValue("@usertype", 5558986);

                //com.ExecuteNonQuery();

                //conn.Close();

                //SqlDataSource1.InsertCommand = "Insert into Users (FirstName,UserType) VALUES (CreateUserWizard1.UserName, technician)";


                SqlDataSource1.InsertParameters["FirstName"].DefaultValue = CreateUserWizard1.UserName.ToString();
                SqlDataSource1.InsertParameters["UserType"].DefaultValue = "Technician";
                SqlDataSource1.Insert();



                //SqlDataSource1.InsertParameters.Add("FirstName", "username1");
                //SqlDataSource1.InsertParameters.Add("UserType", "technician");

                //SqlDataSource1.DataBind();
                //SqlDataSource1.Insert();

                Roles.AddUserToRole(CreateUserWizard1.UserName, "Technician");
            
               
        }
    }
}
