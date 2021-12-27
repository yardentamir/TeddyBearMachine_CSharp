using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Settings : System.Web.UI.Page
{
    XmlDocument myDoc = new XmlDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string[] ValueArr = new string[] { "ללא הגבלה", "10", "20", "30" };
            string[] nametime = new string[] { "ללא הגבלה", "10 שניות", "20 שניות", "30 שניות" };
            for (int i = 0; i < nametime.Length; i++)
            {
                ListItem li = new ListItem();
                li.Text = nametime[i];
                li.Value = ValueArr[i];
                TimeList.Items.Add(li);
            }
            TimeList.DataBind();
            string theItemId = Session["theItemIdSession"].ToString();
            myDoc.Load(Server.MapPath("trees/XMLFile1.xml"));
            XmlNode node = myDoc.SelectSingleNode("/games/game[@id='" + theItemId + "']");
            GameNameEdit.Text = Server.UrlDecode(node.SelectSingleNode("name").InnerText);

            TimeList.SelectedValue = node.Attributes["time"].Value;
        }

    }


    protected void SaveMovetoEdit_Click(object sender, EventArgs e)
    {
        //שמור ועבור לעריכת השאלות- עובר לדף עריכה

        myDoc.Load(MapPath("trees/XMLFile1.xml"));
        string theItemId = Session["theItemIdSession"].ToString();

        myDoc.SelectSingleNode("//games/game[@id='" + theItemId + "']").Attributes["time"].Value = TimeList.SelectedValue;
        myDoc.SelectSingleNode("//games/game[@id='" + theItemId + "']/name").InnerXml = Server.UrlEncode(GameNameEdit.Text);

        myDoc.Save(Server.MapPath("trees/XMLFile1.xml"));
        Response.Redirect("Edit.aspx");

    }
    protected void CancelMovetoGames_Click(object sender, EventArgs e)
    {
        //בטל וחזור - חוזר לדף המשחקים שלי

        Response.Redirect("CeateGames.aspx");
    }

    protected void SaveMovetoGames_Click(object sender, EventArgs e)
    {
        //שמור- חוזר לדף המשחקים שלי

        string theItemId = Session["theItemIdSession"].ToString();
        myDoc.Load(MapPath("trees/XMLFile1.xml"));
        myDoc.SelectSingleNode("//games/game[@id='" + theItemId + "']").Attributes["time"].Value = TimeList.SelectedValue;
        myDoc.SelectSingleNode("//games/game[@id='" + theItemId + "']/name").InnerXml = Server.UrlEncode(GameNameEdit.Text);
        myDoc.Save(Server.MapPath("trees/XMLFile1.xml"));
        Response.Redirect("CeateGames.aspx");

    }
}