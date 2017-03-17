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
    public partial class unidetail : System.Web.UI.Page
    {
        public string path1;
        public string path2;
        public string path3;
        public string path4;
        public string path5;
        public string path6;
        public string path7;

        public string path12;
        public string path13;
        public string path14;
        public string path15;
        public string path16;
        public string path17;
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String uni = Request.QueryString["Name"];
            path1 = "images/" + uni + " Big.jpg";
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();

            string name, address, description, rating, ranking, acceptancerate, students, financialaid,
                MaleFemaleRatio, Societies,Faculty,MinSat,MinNat = null;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            List<Employee> Details = new List<Employee>();
            using (cmd = new SqlCommand("details", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uni_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@uni_name"].Value = uni;
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    name = reader[0] as string;
                    this.chikiya.Text = name;
                    address = reader[1] as string;
                    description = reader[2] as string;
                    ranking = reader[3].ToString();
                    MaleFemaleRatio = reader[4].ToString();
                    acceptancerate = reader[5].ToString();
                    rating = reader[6].ToString();
                    
                    students = reader[7].ToString();
                 
                    financialaid = reader[8].ToString();
                    Societies = reader[9].ToString();
                    Faculty = reader[10].ToString();
                    MinSat = reader[11].ToString();
                    MinNat=reader[12].ToString();

                    this.chikiya1.Text = address;
                    this.chikiya2.Text = description;
                    this.chikiya3.Text = ranking;
                    this.chikiya4.Text = MaleFemaleRatio;
                    this.chikiya5.Text = acceptancerate;
                    this.chikiya6.Text = rating;
                    this.chikiya7.Text = students;
                    this.chikiya8.Text = financialaid;
                    this.chikiya9.Text = Societies;
                    this.chikiya10.Text = Faculty;
                    this.chikiya11.Text = MinSat;
                    this.chikiya12.Text = MinNat;
                    this.chikiya21.Text = description;
                  
                }

            }

            string cname, cprice = null;
            
            using (cmd = new SqlCommand("Cource", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uni_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@uni_name"].Value = uni;
                SqlDataReader read = cmd.ExecuteReader();

                while (read.Read())
                {
                    cname = read[0] as string;
                    cprice = read[1].ToString();

                    Details.Add(new Employee()
                    {
                        Name = cname,
                        Tuition=cprice
                    });
                }

            }
            //Assign data source to the repeater
            this.Repeater1.DataSource = Details;

            //You need to rebind the repeater
            this.Repeater1.DataBind();

            string uni_name=null;

            using (cmd = new SqlCommand("similar", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uni_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@uni_name"].Value = uni;
                SqlDataReader reader = cmd.ExecuteReader();
                string[] names = new string[30];
                int i = 0;
                while (reader.Read())
                {
                    names[i++] = reader[0] as string;
                
                }
                
                path2 = "images/" + names[0] + " Big.jpg";
                path12 = "unidetail.aspx?Name=" + names[0];
              
                path3 = "images/" + names[1] + " Big.jpg";
                path13 = "unidetail.aspx?Name=" + names[1];
                
                path4 = "images/" + names[2] + " Big.jpg";
                path14 = "unidetail.aspx?Name=" + names[2];
                
                path5 = "images/" + names[3] + " Big.jpg";
                path15 = "unidetail.aspx?Name=" + names[3];
               
                path6 = "images/" + names[4] + " Big.jpg";
                path16 = "unidetail.aspx?Name=" + names[4];
                
                path7 = "images/" + names[5] + " Big.jpg";
                path17 = "unidetail.aspx?Name=" + names[5];


            }




        }

        
    }
}