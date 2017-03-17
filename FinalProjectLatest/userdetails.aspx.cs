using FinalProjectLatest.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectLatest
{
    public partial class userdetails : System.Web.UI.Page
    {
        public string name;
        public string email;
        public string cnic;
        public string address;
        public string city;
        public string gpa;
        public string gre;
        public string metric;
        public string current;
        public string department;
        public string personal;
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String username = Request.QueryString["Name"]; ;
            
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();

            
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            using (cmd = new SqlCommand("user_details", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value=username;
             
                SqlDataReader reader = cmd.ExecuteReader();
                string[] names = new string[30];
                int i = 0;
                while (reader.Read())
                {
                    names[i++] = reader[0] as string;
                    names[i++] = reader[1] as string;
                    names[i++] = reader[2] as string;
                    names[i++] = reader[3] as string;
                    names[i++] = reader[4] as string;
                    names[i++] = reader[5] as string;
                    names[i++] = reader[6] as string;
                    names[i++] = reader[7] as string;
                    names[i++] = reader[8] as string;
                    names[i++] = reader[9] as string;
                    names[i++] = reader[10] as string;
                    names[i++] = reader[11] as string;

                }

                name = names[0] + " " + names[1];
                email = names[2];
                cnic = names[3];
                address = names[4];
                city = names[5];
                gpa = names[6];
                gre = names[7];
                metric = names[8];
                current = names[9];
                department = names[10];
                personal = names[11];

            }
        }
    }
}