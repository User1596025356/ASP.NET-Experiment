<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Ex5_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 87px;
        }
        .auto-style2 {
            width: 48%;
        }
        .auto-style3 {
            width: 87px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            margin-right: 0px;
        }
        .auto-style6 {
            width: 143px;
        }
        .auto-style7 {
            height: 20px;
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style1"  style="text-align:right">用户名：</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtName" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="请输入用户名！" SetFocusOnError="True" ValidationGroup="groupName">*</asp:RequiredFieldValidator>
                        <asp:Button ID="btnValidateName" runat="server" Text="用户名是否可用" ValidationGroup="groupName" OnClick="btnValidateName_Click" />
                        <asp:Label ID="lblName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="text-align:right">密码：</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="请输入密码！" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align:right">确认密码：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="请输入密码！" SetFocusOnError="true" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                                <tr>
                    <td class="auto-style1" style="text-align:right">生日：</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvBirthday" runat="server" ErrorMessage="请输入生日！" ControlToValidate="txtBirthday" Display="Dynamic" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="rvBirthday" runat="server" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="日期应在1900-1-1到2020-1-1之间！" MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align:right">电话号码：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ErrorMessage="请输入电话号码！" ControlToValidate="txtTelephone" Display="Dynamic" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelephone" runat="server" ControlToValidate="txtTelephone" Display="Dynamic" ErrorMessage="电话号码格式应为021-66798304！" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align:right">身份证号：</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvIdentity" runat="server" ErrorMessage="请输入身份证号！" ControlToValidate="txtIdentity" Display="Dynamic" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="csvIdentity" runat="server" ControlToValidate="txtIdentity" Display="Dynamic" ErrorMessage="身份证号错误！" SetFocusOnError="True" OnServerValidate="csvIdentity_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" ValidationGroup="groupSubmit" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <asp:ValidationSummary ID="vsSubmit" runat="server" Display="Dynamic" ShowMessageBox="True" ShowSummary="False" />
        <asp:ValidationSummary ID="vsName" runat="server" ShowMessageBox="True" Display="Dynamic" ShowSummary="False" ValidationGroup="groupName" />
    </form>
</body>
</html>
