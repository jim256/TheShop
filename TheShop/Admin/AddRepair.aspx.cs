using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheShop.Admin
{
    public partial class AddRepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList ddltemp = new DropDownList();
            DropDownList ddlYear = (DropDownList)DetailsView1.FindControl("ddlYear");
            int curYear = DateTime.Now.Year;

            for (int i = 1; i < 120; ++i)
            {

                ListItem tmp = new ListItem();
                tmp.Value = curYear.ToString();

                tmp.Text = curYear.ToString();

                ddlYear.Items.Add(tmp);

                curYear = DateTime.Now.AddYears(-i).Year;
            }

            
        }
    }
    
}