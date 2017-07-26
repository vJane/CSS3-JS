<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文件共享网站—上传</title>
</head>
<body background="file/bg.jpg">
<center>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" Height="51px" 
            style="text-align: center" Width="427px">
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server"/>
            <asp:Button ID="Button7" runat="server" Text="上传" onclick="Button7_Click" 
                Height="30px" Width="71px" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
        </asp:Panel>
    
    </div>
    <asp:Panel ID="Panel3" runat="server" Height="288px" 
        style="text-align: center" Width="743px">
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="AccessDataSource1" 
            Width="680px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="名称" SortExpression="name">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="ipath" HeaderText="路径" SortExpression="ipath">
                    <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="itype" HeaderText="类型" SortExpression="itype" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button8" runat="server" CommandArgument='<%# Eval("id") %>' 
                            onclick="Button8_Click" Text="下载" />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>' 
                            Visible="False"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ipath") %>' 
                            Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/db1.mdb" 
            DeleteCommand="DELETE FROM [loaddownload] WHERE [id] = ?" 
            InsertCommand="INSERT INTO [loaddownload] ([id], [name], [ipath], [itype]) VALUES (?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [loaddownload] ORDER BY [itype]" 
            UpdateCommand="UPDATE [loaddownload] SET [name] = ?, [ipath] = ?, [itype] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ipath" Type="String" />
                <asp:Parameter Name="itype" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ipath" Type="String" />
                <asp:Parameter Name="itype" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="注：文件名不可超过100个字符"></asp:Label>
    </asp:Panel>
    </form>
        </center>
    </body>
</html>
