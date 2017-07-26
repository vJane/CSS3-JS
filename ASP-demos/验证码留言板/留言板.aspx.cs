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


public partial class 留言板 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string con = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");        OleDbConnection ole=new OleDbConnection(con);        ole.Open();        OleDbCommand cmd=new OleDbCommand("select *from yonghu where yname='"+this.TextBox1.Text+"'"+"and ypsd='"+this.TextBox2.Text+"'",ole);        int count=Convert.ToInt32(cmd.ExecuteScalar());
        if (count > 0)
        {
            Session["name"] = Request["TextBox1"];
            this.LinkButton1.Visible = true;
        }
        else
        {
            this.LinkButton1.Visible = false;
            Session["name"] = "游客";
        }        string text=this.TextBox3.Text.ToString();//获得用户输入的验证码。        string chkcode=Request.Cookies["validateCookie"].        Values["ChkCode"].ToString();//获得生成的验证码         if (!string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(chkcode))            {              if (!chkcode.Equals(chkcode.ToUpper()))//如果系统生成的不为大写则转换成大写形式               chkcode.ToUpper();            if (text.ToUpper().Trim().Equals(chkcode.Trim()))//将输入的验证码转换成大写并与系统生成的比较              this.Label4.Text = "this is right";             else            {this.Label4.Text = "this is not right";}            }        else if (string.IsNullOrEmpty(text))             { this.Label4.Text = "Please input checkcode!!";}        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("liuyan.aspx");
    }
}
