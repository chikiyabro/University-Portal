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
    
    public partial class home : System.Web.UI.Page
    {
        public string path1;
        public string path2;
        public string path3;
        public string path4;
        public string path5;
        public string path6;
        public string sharab;

        public string path11;
        public string path12;
        public string path13;
        public string path14;
        public string path15;
        public string path16;
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            List<Employee> Details = new List<Employee>();
            if (this.Session["username"] == null)
            {
                cmd = new SqlCommand("top_unis", con);
                cmd.CommandType = CommandType.StoredProcedure;
                sharab = "Top Universities";
            }
            else
            {
                String City = Request.QueryString["Name"];
                sharab = "Top Universities in Your City";
                cmd = new SqlCommand("top_unis_users", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@user_name", SqlDbType.VarChar, 50).Value = City;
            }
            SqlDataReader reader = cmd.ExecuteReader();
            string[] names = new string[30];
            int i = 0;
            while (reader.Read())
            {
                names[i++] = reader[0] as string;

            }
                    
               
            path11 = "unidetail.aspx?Name=" + names[0];
            path1 = "images/" + names[0] + " Big.jpg";
            //path1 = "images/" + names[0] + ".jpg";
                
            path12 = "unidetail.aspx?Name=" + names[1];
            path2 = "images/" + names[1] + " Big.jpg";
               
            path13 = "unidetail.aspx?Name=" + names[2];
            path3 = "images/" + names[2] + " Big.jpg";
                
            path14 = "unidetail.aspx?Name=" + names[3];
            path4 = "images/" + names[3] + " Big.jpg";
             
            path15 = "unidetail.aspx?Name=" + names[4];
            path5 = "images/" + names[4] + " Big.jpg";
              
            path6 = "images/" + names[5] + " Big.jpg";
            path16 = "unidetail.aspx?Name=" + names[5];


            }
        
        
       
        protected void redir(object sender, EventArgs e)
        {
            Response.Redirect("https://www.youtube.com/watch?v=T9KqnIrmIsM");
        }
        protected void SendCity(object sender, EventArgs e)
        {
            String City=typeCity.Text;
            Response.Redirect("Webform1.aspx?Program=1&City="+City);
        }

    }
}