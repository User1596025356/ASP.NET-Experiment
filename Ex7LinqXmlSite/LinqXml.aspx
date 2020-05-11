<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXml.aspx.cs" Inherits="LinqXmlInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 69px">
    <form id="form1" runat="server">
        <div>
            分类名：<asp:TextBox ID="txtName" runat="server" Text="只用于“查询"></asp:TextBox>
        </div>
        <asp:Button ID="btnQueryAll" runat="server" Text="显示全部" OnClick="btnQueryAll_Click" />
        <asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="btnQuery_Click" style="width: 40px" />
        <asp:Button ID="btnInsert" runat="server" Text="插入" OnClick="btnInsert_Click" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
