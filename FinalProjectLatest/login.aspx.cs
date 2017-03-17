using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FinalProjectLatest.DAL;
using System.Data.SqlClient;

namespace FinalProjectLatest
{
    public partial class login : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Login(object sender, EventArgs e)
        {
            String Email = email.Text;
            String Password = password.Text;
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            int Found = 0;
            string first, last;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
          
                cmd = new SqlCommand("LoggingIn", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Status", SqlDbType.VarChar, 1).Direction = ParameterDirection.Output;
               
                cmd.Parameters["@Email"].Value = Email;
                cmd.Parameters["@Pass"].Value = Password;

                cmd.ExecuteNonQuery();
                
                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Status"].Value); //convert to output parameter to interger format
                
         

            if (Found == 1)
            {
                Session["username"] = email.Text;
                Response.Redirect("Home.aspx?Name=" + Session["username"]);
            }
            else
            {
                this.message.Text = "Given Username OR Password is Incorrect";
            }
        }
    }
}