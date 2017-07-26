<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fayanban.aspx.cs" Inherits="fayanban" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" Height="36px" Text="发言" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" 
            Width="78px" />
    
    </div>
    </form>
</body>
</html>
