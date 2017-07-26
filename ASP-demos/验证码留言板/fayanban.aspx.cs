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

public partial class fayanban : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string talk=Request["TextBox1"];
        string message1=Application["message"].ToString()+Session["name"].ToString()+"说:"+talk+"<br>";
        Application.Lock();
        Application["message"]=message1;
        Application.UnLock();

    }
}
