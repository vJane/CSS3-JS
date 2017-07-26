<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shujusongxian.aspx.cs" Inherits="shujusongxian" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="stid" HeaderText="编号" SortExpression="stid" />
                <asp:BoundField DataField="stname" HeaderText="名称" SortExpression="stname" />
                <asp:ImageField DataImageUrlField="stimage" HeaderText="图片">
                    <ControlStyle Height="100px" Width="200px" />
                    <ItemStyle BorderColor="White" Width="200px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/db1.mdb" SelectCommand="SELECT * FROM [tupian]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
