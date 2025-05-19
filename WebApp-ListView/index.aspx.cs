using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_ListView
{
  public partial class index : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSelect_Command(object sender, CommandEventArgs e)
    {
      if(e.CommandName == "eventSelect")
      {
        lblShowSelect.Text = e.CommandArgument.ToString();
      }
    }
  }
}