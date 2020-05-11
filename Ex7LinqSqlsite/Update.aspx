<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 19%;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            width: 163px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" style="text-align:right">分类Id：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right">分类名：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align:right;vertical-align:top">描述：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDescn" runat="server" Height="74px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnUpdate" runat="server" Text="修改" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnReturn" runat="server" Text="返回" OnClick="btnReturn_Click" />
    </form>
</body>
</html>
