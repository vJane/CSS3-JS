﻿using System;
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = FileUpload1.FileName;
        string type = name.Substring(name.LastIndexOf(".") + 1);
        string ipath = Server.MapPath("upf") + "\\" + name;
        string wpath = "upf\\" + name;
        if (type == "jpg")
        {
            FileUpload1.SaveAs(ipath);
            TextBox1.Text = ipath;
            Image1.ImageUrl = wpath;
        }

    }
}
