using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!this.IsPostBack)
{string con = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
OleDbConnection ole = new OleDbConnection(con);
ole.Open(); 
OleDbCommand olec=new OleDbCommand("select * from vote",ole);
OleDbDataReader oled=olec.ExecuteReader();
this.RadioButtonList1.DataSource=oled;
this.RadioButtonList1.DataTextField="vtext";
this.RadioButtonList1.DataValueField="vid";
this.RadioButtonList1.DataBind();
oled.Close();
ole.Close();
}
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
protected void  Button1_Click(object sender, EventArgs e)
{
    string con = "PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
OleDbConnection ole = new OleDbConnection(con);
ole.Open(); 
OleDbCommand olec=new OleDbCommand("update vote set vnum=vnum+1 where vid='"+this.RadioButtonList1.SelectedValue+ "'",ole);
olec.ExecuteNonQuery();
ole.Close();

}
protected void Button2_Click(object sender, EventArgs e)
{
    Response.Redirect("Default5.aspx");
}
}
