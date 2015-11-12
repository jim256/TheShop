using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TheShop
{
    public partial class FindRepair : Page
    {
        public string url { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cmdFindRepair_Click(object sender, EventArgs e)
        {
            string repairID = txtRepairID.Text;
            string url = "~/RepairStatus.aspx";
            url += "?repairID=" + repairID.ToString();
            Response.Redirect(url);
        }
    }
}