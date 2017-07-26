<%@ Page Language="C#" AutoEventWireup="true" CodeFile="liuyan.aspx.cs" Inherits="liuyan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:DataList ID="DataList1" runat="server">          <ItemTemplate>           回复:<asp:Label ID="yhtextLabel" runat="server" Text='< %# Eval("ytext") %>' /><br />           <br />           作者: <asp:Label ID="yhnameLabel" runat="server" Text ='< %# Eval("yname") %>' /><br /> <br /> <br />           </ItemTemplate>    </asp:DataList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/db1.mdb" SelectCommand="SELECT * FROM [yh]">
        </asp:AccessDataSource>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="76px" TextMode="MultiLine" 
            Width="341px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="提交" />
    
    </div>
    </form>
</body>
</html>
