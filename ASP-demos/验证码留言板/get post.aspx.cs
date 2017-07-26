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
using System.IO;

public partial class get_post : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Application["count"]);  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string yname = Request.Form["Textbox1"];
        string yage = Request.Form["Textbox2"];
        Response.Write(yname+"<br>"+yage);
        Response.Write("<br>你使用的是" + Request.RequestType + "方式传递数据<br>");

    }
protected void  Button2_Click(object sender, EventArgs e)
{
        Response.Write("当前网页的虚拟路径是"+Request.ServerVariables["url"]);
        Response.Write("<br>当前网页的虚拟路径是" + Request.RawUrl);
        Response.Write("<br>当前网页的实际路径是" + Request.ServerVariables["path_translated"]);
        Response.Write("<br>当前网页的实际路径是" + Request.PhysicalPath);
        Response.Write("<br>服务器名是" + Request.ServerVariables["server_name"]);
        Response.Write("<br>服务器IP" + Request.UserHostAddress);
}
protected void  Button3_Click(object sender, EventArgs e)
{
    
        Response.Write("<br>这个浏览器是否支持背景音乐"+Request.Browser.BackgroundSounds);
        Response.Write("<br>这个浏览器是否支持框架" + Request.Browser.Frames);
        Response.Write("<br>客户用的什么系统" + Request.Browser.Platform);
}
protected void Button4_Click(object sender, EventArgs e)
{
   Response.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
   Response.WriteFile("d://website4/abc.txt");

}
protected void Button5_Click(object sender, EventArgs e)
{
          string fileName = "abc.txt";
          string filePath = Server.MapPath("abc.txt");
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
