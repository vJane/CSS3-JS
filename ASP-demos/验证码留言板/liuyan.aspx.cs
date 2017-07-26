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


public partial class liuyan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole = new OleDbConnection(strconn);
        DataSet ds = new DataSet();
        ole.Open();
        OleDbDataAdapter oda = new OleDbDataAdapter("select * from yh", strconn);
        oda.Fill(ds, "tab");
        DataList1.DataSource = ds.Tables["tab"].DefaultView;
        DataList1.DataBind();
        ole.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole = new OleDbConnection(strconn);
        DataSet ds = new DataSet();
        DataRow drow;
        ole.Open();
        OleDbDataAdapter oda = new OleDbDataAdapter("select * from yh", strconn);
        OleDbCommandBuilder ob = new OleDbCommandBuilder(oda);
        oda.Fill(ds, "tab");
        drow = ds.Tables["tab"].NewRow();
        drow[0] = Session["yname"];
        drow[1] = this.TextBox1.Text;
        ds.Tables["tab"].Rows.Add(drow);
        oda.Update(ds, "tab");
        DataList1.DataSource = ds.Tables["tab"];
        DataList1.DataBind();
        ole.Close();
    }
}
