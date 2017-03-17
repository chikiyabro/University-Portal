using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalProjectLatest.DAL;

namespace FinalProjectLatest
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Signup(object sender, EventArgs e)
        {
            
            
                String fname = first_name.Text;
                String lname = last_name.Text;
                String uname = username.Text;
                String email = Email.Text;
                String password = Password.Text;
                String phone = Phone.Text;
                String city = City.Text;
                DataTable DT = new DataTable();
                myDAL objMyDAL = new myDAL();
                int found;
                found = objMyDAL.CheckSignup(fname, lname, uname, email, password, phone, city, ref DT);
                if (found == 1)
                {
                    this.Session["username"] = username.Text;
                    Response.Redirect("givedetails.aspx?fname=" + first_name.Text + "&lname=" + last_name.Text + "&username=" + username.Text);
                }
                else if(found == 0)
                {
                    this.message.Text = "This Username is already taken.";
                }
            }
        
    }
}