using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TheShop
{
    public partial class FindJob : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cmdFindJob_Click(object sender, EventArgs e)
        {
            string jobID = txtJobID.Text;
            string url = "~/RepairStatus.aspx";
            url += "?jobID=" + jobID.ToString();
            Response.Redirect(url);
        }
    }
}