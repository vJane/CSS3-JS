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
using System.IO;

public partial class upload : System.Web.UI.Page
{
    public static string fileName;
    public static string filePath;

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int suoyin = Convert.ToInt32(e.CommandArgument);
        fileName = (GridView1.Rows[suoyin].FindControl("label2") as Label).Text;
        filePath = (GridView1.Rows[suoyin].FindControl("label3") as Label).Text;

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string name = FileUpload1.FileName;
        string type = name.Substring(name.LastIndexOf(".") + 1);
        string ipath = Server.MapPath("file") + "\\" + name;
        string wpath = "file\\" + name;
        FileUpload1.SaveAs(ipath);  
        string con = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath("app_data/db1.mdb");
        OleDbConnection ole = new OleDbConnection(con);
        ole.Open();
        OleDbCommand olec = new OleDbCommand("insert into loaddownload (name,ipath,itype) values (?,?,?)", ole);
        olec.Parameters.Add("name", OleDbType.VarChar, 1000).Value = name;
        olec.Parameters.Add("ipath", OleDbType.VarChar, 1000).Value = "~/file/" + name;
        olec.Parameters.Add("itype", OleDbType.VarChar, 50).Value = type;
        OleDbDataAdapter oled = new OleDbDataAdapter();
        oled.UpdateCommand = olec;
        olec.ExecuteNonQuery();
        Response.AddHeader("Refresh","1");
        this.Label1.Text = "上传成功";
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        FileInfo fileInfo = new FileInfo(filePath);
        Response.Clear();
        Response.ClearContent();
        Response.ClearHeaders();
        Response.AddHeader("Content-Disposition", "attachment;filename=" + fileName);
        Response.AddHeader("Content-Length", fileInfo.Length.ToString());
        Response.AddHeader("Content-Transfer-Encoding", "binary");
        Response.ContentType = "application/octet-stream";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
        Response.WriteFile(fileInfo.FullName);
        Response.Flush();
        Response.End(); 
    }
}
