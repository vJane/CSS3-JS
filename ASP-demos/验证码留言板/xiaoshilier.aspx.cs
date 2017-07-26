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
public partial class xiaoshilier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string con="PROVIDER=Microsoft.Jet.OLEDB.4.0;DATA Source="+System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole=new OleDbConnection(con);
        DataSet ds=new DataSet();
        DataTable dtable;//定义实例
        DataRowCollection coldrow;
        DataRow drow;
        int i;
        ole.Open();
        OleDbDataAdapter oda=new OleDbDataAdapter("select * from yonghu",ole);
        oda.Fill(ds,"tab"); 
        dtable=ds.Tables["tab"];//将数据表tab的数据复制给dtable
        coldrow=dtable.Rows;//用DataRowCollection类型的变量coldrow获得dtable中的所有行。 
        for(i=0;i<coldrow.Count;i++)
        {drow=coldrow[i];//drow代表coldrow中的每一行
        drow[0]=Convert.ToInt32(drow[0])+1;}//drow[i]代表第i+1个字段
        dtable.AcceptChanges();//用AcceptChanges方法保证dtable接受了变化。
        this.GridView1.DataSource=ds.Tables["tab"].DefaultView;
        GridView1.DataBind();
        ole.Close();
       


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
