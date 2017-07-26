<%@ Page Language="C#" AutoEventWireup="true" CodeFile="get post.aspx.cs" Inherits="get_post" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="你的名字是"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="你的年龄是"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="提交" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="服务器信息" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="浏览器信息" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="输出文件" />
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="下载文件" />
    
    </div>
    </form>
</body>
</html>
