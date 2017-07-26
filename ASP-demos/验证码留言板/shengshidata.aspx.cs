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

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
if(!this.IsPostBack)// IsPostBack代表是否页面回传
	{string con="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
//定义连接字符串
OleDbConnection ole=new OleDbConnection(con);
//建立了一个数据库连接实例
ole.Open();//打开连接
OleDbCommand olec=new  OleDbCommand("select * from sheng",ole);
//定义了一个Command的实例来执行数据库命令
OleDbDataReader oled=olec.ExecuteReader();
this.DropDownList1.DataSource=oled;
//指定控件的数据源为oled
this.DropDownList1.DataTextField="shengname";
//将sname字段值赋给控件的DataTextField，
this.DropDownList1.DataValueField="shengid";
this.DropDownList1.DataBind();//数据绑定
oled.Close();//关闭DataReader对象
OleDbCommand olecc=new  OleDbCommand("select * from shi where shid='"+this.DropDownList1.SelectedValue+"'",ole);
OleDbDataReader oledd=olecc.ExecuteReader();
this.DropDownList2.DataSource=oledd;//指定控件的数据源
this.DropDownList2.DataTextField="shiname";
//将text字段值赋给控件的DataTextField，即为显示的字段
this.DropDownList2.DataValueField="shid";
this.DropDownList2.DataBind();//数据绑定
oledd.Close();//关闭DataReader对象
ole.Close();
}
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string con="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");//定义连接字符串
OleDbConnection ole=new OleDbConnection(con);
//建立了一个数据库连接实例
ole.Open();//打开连接
OleDbCommand olecc=new  OleDbCommand("select * from shi where shid='"+this.DropDownList1.SelectedValue+"'",ole);
//定义了一个Command的实例来执行数据库命令
OleDbDataReader oledd=olecc.ExecuteReader();
this.DropDownList2.DataSource=oledd; 
//指定控件的数据源为oled
this.DropDownList2.DataTextField="shiname";
//将text字段值赋给控件的DataTextField，即
this.DropDownList2.DataValueField="shid";
this.DropDownList2.DataBind();//数据绑定
oledd.Close();//关闭DataReader对象
ole.Close();

    }
}
