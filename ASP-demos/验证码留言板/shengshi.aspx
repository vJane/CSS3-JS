<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shengshi.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" Text="省"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="shengname" 
            DataValueField="shengid" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/db1.mdb" SelectCommand="SELECT * FROM [sheng]">
        </asp:AccessDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="市"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="AccessDataSource2" DataTextField="shiname" DataValueField="sid">
        </asp:DropDownList>
    
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/db1.mdb" 
            SelectCommand="SELECT * FROM [shi] WHERE ([shid] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="shid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
