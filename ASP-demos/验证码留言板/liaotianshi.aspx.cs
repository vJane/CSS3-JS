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

public partial class liaotianshi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string username=this.TextBox1.Text;
        string con="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+System.Web.HttpContext.Current.Server.MapPath("App_data/db1.mdb");
        OleDbConnection ole=new OleDbConnection(con);
        DataSet ds=new DataSet();
        DataRow drow;
        ole.Open();
        OleDbCommand olec=new OleDbCommand("select * from yonghu where yname='"+username+"'",ole);
        int count=Convert.ToInt32(olec.ExecuteScalar());
        OleDbDataAdapter oda=new OleDbDataAdapter ("select * from yonghu",ole);
        OleDbCommandBuilder ob=new OleDbCommandBuilder(oda);
        oda.Fill(ds,"tab");
        if (count > 0)
        {
            this.Label1.Text = "昵称已存在，请重新输入！";
        }
        else
        {
            drow = ds.Tables["tab"].NewRow();
            drow[0] = ds.Tables["tab"].Rows.Count + 1;
            drow[1] = this.TextBox1.Text;
            ds.Tables["tab"].Rows.Add(drow);
            oda.Update(ds, "tab");
            ole.Close();

            Session["name"] = Request["TextBox1"];
            Application["message"] = "";
            Response.Redirect("HTMLPage.htm");
        }
    }
}
