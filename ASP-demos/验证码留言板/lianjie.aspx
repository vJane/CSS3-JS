<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lianjie.aspx.cs" Inherits="lianjie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db1ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:db1ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM [shangchuan]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="fid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="fid" HeaderText="编号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="fname" HeaderText="名称" SortExpression="fname" />
                <asp:BoundField DataField="fpath" HeaderText="路径" SortExpression="fpath" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="fid" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="fpath" HeaderText="fpath" SortExpression="fpath" />
            </Columns>
        </asp:GridView>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="fid" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                fid:
                <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                <br />
                fname:
                <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                <br />
                fpath:
                <asp:Label ID="fpathLabel" runat="server" Text='<%# Eval("fpath") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db1ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:db1ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM [shangchuan] WHERE ([fid] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="fid" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
