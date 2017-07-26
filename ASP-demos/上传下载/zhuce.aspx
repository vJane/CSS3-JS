<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文件共享网站—注册</title>
    <style type="text/css">
     
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 492px;
        }
        .style4
        {
            height: 26px;
            width: 492px;
        }
        .style5
        {
            height: 44px;
        }
        .style6
        {
            width: 492px;
            height: 38px;
        }
        .style7
        {
            height: 38px;
        }
        .style9
        {
            width: 494px;
            text-align: right;
        }
        .style10
        {
            width: 494px;
            text-align: right;
            height: 25px;
        }
        .style11
        {
            height: 25px;
        }
        .style12
        {
            height: 35px;
            text-align: left;
        }
        .style13
        {
            height: 35px;
            width: 541px;
            text-align: right;
        }
    </style>
</head>
<body background="file/bg.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <h2>
                            <b>文件共享网站</b></h2>
                        用户注册</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:TextBox ID="TextBox1" runat="server" Height="153px" Width="367px" 
                            TextMode="MultiLine" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="同意" />
                    </td>
                    <td class="style12">
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="不同意" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="下一步" onclick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <table class="style1">
            <tr>
                <td class="style5" colspan="2" style="text-align: center">
                    注册信息</td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    用户名</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="用户名不能为空！"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="用户名已存在" 
                        onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" style="text-align: right">
                    密码</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="密码不能为空!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" style="text-align: right">
                    确认密码</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="密码不一致"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" Text="下一步" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Height="147px" Visible="False">
        <table class="style1">
            <tr>
                <td colspan="2" style="text-align: center">
                    <br />
                    个人信息<br />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    真实姓名</td>
                <td class="style11">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    邮箱</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="邮箱格式不正确！" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    出生年月</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="格式不正确！" MaximumValue="2014/10/21" 
                        MinimumValue="1900/01/01" Type="Date"></asp:RangeValidator>
                    <asp:Label ID="Label1" runat="server" Text="例:2000/12/21"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="完成" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <asp:Label ID="Label2" runat="server" style="text-align: center" Text="注册成功！" 
            Visible="False"></asp:Label>
        
    
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="点击" 
        Visible="False" />
    <asp:Label ID="Label3" runat="server" Text="转到登录页面" Visible="False"></asp:Label>
        
    
    </form>
</body>
</html>
