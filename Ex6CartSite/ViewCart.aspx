<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Ex6CartSite_ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <div>
            <asp:CheckBoxList ID="chklsPet" runat="server">
            </asp:CheckBoxList>
        </div>
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="清空购物车" />
        <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="继续购物" />
    </form>
</body>
</html>
