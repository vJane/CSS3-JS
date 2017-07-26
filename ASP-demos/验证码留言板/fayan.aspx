<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fayan.aspx.cs" Inherits="fayan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <meta http-equiv="refresh" content="3">
    <style type="text/css">
        #form1
        {
            text-align: right;
            width: 739px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="AccessDataSource1" 
        DataTextField="yname" DataValueField="yid" style="text-align: right" 
        Height="139px"></asp:ListBox>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/db1.mdb" SelectCommand="SELECT * FROM [yonghu]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
