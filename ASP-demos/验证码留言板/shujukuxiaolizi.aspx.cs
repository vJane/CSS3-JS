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
public partial class shujukuxiaolizi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string con="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source="+System.Web.HttpContext.Current.Server.MapPath("App_Data/db1.mdb");        OleDbConnection ole=new OleDbConnection(con);        DataSet ds=new DataSet();        ole.Open();        OleDbDataAdapter oda=new OleDbDataAdapter("select * from yonghu",ole);        oda.Fill(ds,"tab");        GridView1.DataSource=ds.Tables["tab"].DefaultView;        GridView1.DataBind();        ole.Close();
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
