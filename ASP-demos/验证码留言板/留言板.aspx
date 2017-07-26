<%@ Page Language="C#" AutoEventWireup="true" CodeFile="留言板.aspx.cs" Inherits="留言板" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="  密码"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="验证码"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="换一张" />
        <br />
        <img src="yanzhengma.aspx" /> 
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            Visible="False">LinkButton</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
