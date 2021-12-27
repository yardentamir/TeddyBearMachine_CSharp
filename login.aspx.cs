using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EnterBtn_Click(object sender, EventArgs e)
    {
        if (UserTXT.Text == "TeddyTelem" && PWTXT.Text == "1234")
        {
            Response.Redirect("CeateGames.aspx");
            Message.Text = "";
            UserTXT.Text = "";
            PWTXT.Text = "";
        }
        else
        {
            Message.Text = "* שם המשתמש או הסיסמא שהכנסת שגויים";
        }
    }
}