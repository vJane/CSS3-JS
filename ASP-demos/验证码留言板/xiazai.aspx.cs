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

public partial class xiazai : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = FileUpload1.FileName;
        string ipath = Server.MapPath("upf") + "\\" + name;
        string wpath = "upf" + "\\" + name;
        if (this.FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(ipath);
            Response.Write("上传成功");
        }
        else Response.Write("请选择文件");
        string con = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole = new OleDbConnection(con);
        ole.Open();
        OleDbCommand olec = new OleDbCommand("insert into shangchuan (fname,fpath) values (?,?)", ole);
        olec.Parameters.Add("fname", OleDbType.VarChar, 50).Value = name;
        olec.Parameters.Add("fpath", OleDbType.VarChar, 250).Value = ipath;
        OleDbDataAdapter oled = new OleDbDataAdapter();
        oled.UpdateCommand = olec;
        olec.ExecuteNonQuery();

    }
}
