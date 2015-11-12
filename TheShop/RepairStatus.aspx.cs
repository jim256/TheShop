using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheShop
{
    public partial class RepairStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string repairID = Request.QueryString["repairID"];
        }
    }
}