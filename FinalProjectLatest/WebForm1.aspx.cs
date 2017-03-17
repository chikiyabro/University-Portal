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
    public class Employee
    {
        
        public string Address { get; set; }
        public string Name { get; set; }
        public string desc { get; set; }

        public string Rating { get; set; }

        public string Ranking { get; set; }

        public string Acceptance { get; set; }

        public string Tuition { get; set; }

        public string Student { get; set; }

        public string Aid { get; set; }

        public string mfr { get; set; }

        public string societies { get; set; }

        public string faculty { get; set; }

        public string minsat { get; set; }

        public string minnat { get; set; }

        public string profile { get; set; }
    }
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            String City = Request.QueryString["City"];
            String Program = Request.QueryString["Program"];
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            if (Program == "1")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_city", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@city_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@city_name"].Value = City;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            profile="images/"+name+" Big.jpg",
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }
            else if (City == "1")
            {
                if (Program == "SocialSciences")
                    Program = "Social Sciences";
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_programs", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@program_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@program_name"].Value = Program;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();
            }

            if (Program == "0" && City=="0")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("all_unis", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                   
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            profile = "images/" + name + ".jpg",
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }

        }
        protected void ranking_sorting(object sender, EventArgs e)
        {
            String City = Request.QueryString["City"];
            String Program = Request.QueryString["Program"];
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            if (Program == "1")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_city_rank_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@city_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@city_name"].Value = City;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }
            else if (City == "1")
            {
                if (Program == "SocialSciences")
                    Program = "Social Sciences";
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_programs_rank_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@program_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@program_name"].Value = Program;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();
            }
            if (Program == "0" && City == "0")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("all_unis_rank", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;


                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            profile = "images/" + name + ".jpg",
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }

        }
        protected void tuition_sorting(object sender, EventArgs e)
        {
            String City = Request.QueryString["City"];
            String Program = Request.QueryString["Program"];
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            if (Program == "1")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_city_tuition_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@city_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@city_name"].Value = City;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }
            else if (City == "1")
            {
                if (Program == "SocialSciences")
                    Program = "Social Sciences";
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_programs_tuition_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@program_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@program_name"].Value = Program;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();
            }
            if (Program == "0" && City == "0")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("all_unis_tuition", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;


                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            profile = "images/" + name + ".jpg",
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }

        }
        protected void acc_sorting(object sender, EventArgs e)
        {
            String City = Request.QueryString["City"];
            String Program = Request.QueryString["Program"];
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            if (Program == "1")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_city_acc_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@city_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@city_name"].Value = City;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }
            else if (City == "1")
            {
                if (Program == "SocialSciences")
                    Program = "Social Sciences";
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("based_on_programs_acc_sort", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@program_name", SqlDbType.VarChar, 50);
                    cmd.Parameters["@program_name"].Value = Program;
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();
            }
            if (Program == "0" && City == "0")
            {
                string name, address, description, rating, ranking, acceptancerate, tuitionfee, students, financialaid = null;
                SqlConnection con = new SqlConnection(connString);
                con.Open();
                SqlCommand cmd;
                List<Employee> Details = new List<Employee>();
                using (cmd = new SqlCommand("all_unis_acceptance", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;


                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        name = reader[0] as string;
                        address = reader[1] as string;
                        description = reader[2] as string;
                        rating = reader[3].ToString();
                        ranking = reader[4].ToString();
                        tuitionfee = reader[5].ToString();
                        students = reader[6].ToString();
                        acceptancerate = reader[7].ToString();
                        financialaid = reader[8].ToString();


                        Details.Add(new Employee()
                        {
                            profile = "images/" + name + ".jpg",
                            Name = name,
                            Address = address,
                            desc = description,
                            Rating = rating,
                            Ranking = ranking,
                            Acceptance = acceptancerate,
                            Tuition = tuitionfee,
                            Student = students,
                            Aid = financialaid
                        });
                    }

                }
                //Assign data source to the repeater
                this.Repeater1.DataSource = Details;

                //You need to rebind the repeater
                this.Repeater1.DataBind();

            }

        }
    }
}