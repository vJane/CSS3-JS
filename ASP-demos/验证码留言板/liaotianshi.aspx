<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liaotianshi.aspx.cs" Inherits="liaotianshi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 80%;
        }
        .style2
        {
            height: 45px;
            font-size: xx-large;
            font-weight: 700;
            text-align: center;
        }
        .style3
        {
            width: 54px;
        }
        .style5
        {
            width: 115px;
            text-align: right;
        }
        .style6
        {
            width: 193px;
        }
        #form1
        {
            width: 388px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="3">
                聊天室</td>
        </tr>
        <tr>
            <td class="style5">
                昵称</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="进入" 
                    Width="66px" />
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
