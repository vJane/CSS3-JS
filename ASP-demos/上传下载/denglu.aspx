<%@ Page Language="C#" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="留言板" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文件共享网站—登录</title>
</head>
<body background="file/bg.jpg">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <h2>
            <b>文件共享网站</b></h2>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="用户登录"></asp:Label>
        <br />
        <br />
    
        <asp:Label ID="Label2" runat="server" Text="用户名"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="  密码."></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="验证码"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="换一张" />
        <br />
        <img src="yanzhengma.aspx" /> 
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登陆" 
            Height="25px" Width="59px" />
    
    </div>
    </form>
</body>
</html>
