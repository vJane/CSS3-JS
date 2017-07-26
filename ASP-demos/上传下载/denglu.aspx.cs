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
        string text=this.TextBox3.Text.ToString();
        string chkcode=Request.Cookies["validateCookie"].
        Values["ChkCode"].ToString();
        string con = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole=new OleDbConnection(con);
        ole.Open();
        OleDbCommand cmd=new OleDbCommand("select *from yonghu where yname='"+this.TextBox1.Text+"'"+"and ypsd='"+this.TextBox2.Text+"'",ole);
        int count=Convert.ToInt32(cmd.ExecuteScalar());
        
       
        if (!string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(chkcode))
            {  
            if (!chkcode.Equals(chkcode.ToUpper()))  
            chkcode.ToUpper();
            if (text.ToUpper().Trim().Equals(chkcode.Trim()))
            { this.Label4.Text = "用户名或密码不正确";
               if (count > 0)
                {
                  Session["name"] = Request["TextBox1"];
                  Response.Redirect("upload.aspx");
                }
               
            }
            else
            { this.Label4.Text = "验证码不正确"; }
            }
        else if (string.IsNullOrEmpty(text))
             { this.Label4.Text = "Please input checkcode!!";}
        
    }
   
}
