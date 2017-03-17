using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FinalProjectLatest.DAL
{
    public class myDAL
    {
        private static readonly string asad = System.Configuration.ConfigurationManager.ConnectionStrings["faizi"].ConnectionString;

        public int CheckSignup(string fname, string lname, string uname, string email, string password, string phone, string city, ref DataTable DT)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(asad);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SigningIn", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@lname", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Pass", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@phone", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 50);

                cmd.Parameters.Add("@Status", SqlDbType.VarChar, 1).Direction = ParameterDirection.Output;

                cmd.Parameters["@fname"].Value = fname;
                cmd.Parameters["@lname"].Value = lname;
                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@Email"].Value = email;
                cmd.Parameters["@Pass"].Value = password;
                cmd.Parameters["@phone"].Value = phone;
                cmd.Parameters["@city"].Value = city;

                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Status"].Value); //convert to output parameter to interger format

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;
        }

        public DataSet SearchByCity(String City, ref DataTable DT)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(asad);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("based_on_city", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@city_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@city_name"].Value = City;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return ds;
        }
        public DataSet SearchByProgram(String Program, ref DataTable DT)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(asad);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("based_on_programs", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@program_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@program_name"].Value = Program;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return ds;
        }



        public DataSet detail(string uni, ref DataTable DT)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(asad);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("details", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uni_name", SqlDbType.VarChar, 50);
                cmd.Parameters["@uni_name"].Value = uni;

                cmd.ExecuteNonQuery();

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public int fillit(string CNIC, string ADDRESS, string GPA, string GRE,string MATRIC, string CURRENT, string DEPARTMENT, string PS,string name, ref DataTable DT)
        {

                int Found = 0;
                DataSet ds = new DataSet();
                SqlConnection con = new SqlConnection(asad);
                con.Open();
                SqlCommand cmd;
                try
                {
                    cmd = new SqlCommand("filligin", con); //name of your procedure
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@cnic", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@address", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@gpa", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@gre", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@matric", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@current", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@department", SqlDbType.VarChar, 50);
                    cmd.Parameters.Add("@ps", SqlDbType.VarChar, 500);
                    cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value=name;

                    cmd.Parameters.Add("@Status", SqlDbType.VarChar, 1).Direction = ParameterDirection.Output;

                    cmd.Parameters["@cnic"].Value = CNIC;
                    cmd.Parameters["@address"].Value = ADDRESS;
                    cmd.Parameters["@gpa"].Value = GPA;
                    cmd.Parameters["@gre"].Value = GRE;
                    cmd.Parameters["@matric"].Value = MATRIC;
                    cmd.Parameters["@current"].Value = CURRENT;
                    cmd.Parameters["@department"].Value = DEPARTMENT;
                    cmd.Parameters["@ps"].Value = PS;

                    cmd.ExecuteNonQuery();

                    // read output value 
                    Found = Convert.ToInt32(cmd.Parameters["@Status"].Value); //convert to output parameter to interger format

                }
                catch (SqlException ex)
                {
                    Console.WriteLine("SQL Error" + ex.Message.ToString());

                }
                finally
                {
                    con.Close();
                }

                return Found;
            }
        }

}