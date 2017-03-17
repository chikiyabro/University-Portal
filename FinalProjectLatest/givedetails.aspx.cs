using FinalProjectLatest.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectLatest
{
    public partial class givedetails : System.Web.UI.Page
    {
        public string name;
        protected void fill(object sender, EventArgs e)
        {
            name = Request.QueryString["username"];
            String CNIC = cnic.Text;
            String ADDRESS = address.Text;
            String GPA = gpa.Text;
            String GRE = score.Text;
            String MATRIC = matric.Text;
            String CURRENT = current.Text;
            String DEPARTMENT = dept.Text;
            String PS = personal.InnerText.ToString();
            DataTable DT = new DataTable();
            myDAL objMyDAL = new myDAL();
            int found;
            found = objMyDAL.fillit(CNIC, ADDRESS, GPA, GRE, MATRIC, CURRENT, DEPARTMENT, PS, name, ref DT);
            if (found == 1)
            {
                this.Session["username"] = name;
                Response.Redirect("userdetails.aspx?Name=" + name);
 
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            name=Request.QueryString["fname"] + " " + Request.QueryString["lname"];
        }
    }
}