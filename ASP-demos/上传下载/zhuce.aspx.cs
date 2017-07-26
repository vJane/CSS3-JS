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

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.TextBox1.Text = "尊敬的客户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：本服务协议双方为本网站与本网站客户，本服务协议具有合同效力。您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。 无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的'注册'按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.RadioButton1.Checked==true)
        { this.Panel2.Visible = true;
        this.Panel1.Visible = false; }
        else
        {
        this.Panel2.Visible=false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            this.Panel2.Visible = false;
            this.Panel3.Visible = true;
        }

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string name=args.Value;
        string con="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+System.Web.HttpContext.Current.Server.MapPath("App_data/db1.mdb");
        OleDbConnection ole=new OleDbConnection(con);
        ole.Open();
        OleDbCommand olec=new OleDbCommand("select * from yonghu where yname='"+name+"'",ole);
        int count=Convert.ToInt32(olec.ExecuteScalar());
        if(count>0)args.IsValid=false;
        else args.IsValid=true;
        ole.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            string con = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("App_data/db1.mdb");
            OleDbConnection ole = new OleDbConnection(con);
            DataSet ds = new DataSet();
            DataRow drow;
            ole.Open();
            OleDbDataAdapter oda = new OleDbDataAdapter("select * from yonghu", con);
            OleDbCommandBuilder ob = new OleDbCommandBuilder(oda);
            oda.Fill(ds, "tab");
            int num = ds.Tables["tab"].Rows.Count;
            drow = ds.Tables["tab"].NewRow();
            drow[0] = num + 1;
            num++;
            drow[1] = TextBox2.Text;
            drow[2] = TextBox3.Text;
            ds.Tables["tab"].Rows.Add(drow);
            oda.Update(ds, "tab");
            ole.Close();
            this.Panel3.Visible = false;
            this.Label2.Visible = true;
            this.Label3.Visible = true;
            this.Button4.Visible = true;

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("denglu.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
