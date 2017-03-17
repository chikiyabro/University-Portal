using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectLatest
{


    public partial class Site1 : System.Web.UI.MasterPage
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                this.div1.Visible = true;
                this.div2.Visible = false;
            }
            else
            {
                this.div1.Visible = false;
                this.div2.Visible = true;
            }
        }
    }
}