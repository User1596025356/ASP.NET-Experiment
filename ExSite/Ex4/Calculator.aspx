<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Ex4_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center">
    <div>简易计算器</div>
        <p>
            <asp:TextBox ID="txtDisplay" ReadOnly="true" Width="110px" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnOne" runat="server" Text="1" Width="40px" OnClick="btnOne_Click" />
        <asp:Button ID="btnTwo" runat="server" Text="2"  Width="40px" OnClick="btnTwo_Click" />
        <asp:Button ID="btnThree" runat="server" Text="3"  Width="40px" OnClick="btnThree_Click" />
        <br />
        <asp:Button ID="btnAdd" runat="server" Text="+"  Width="40px" OnClick="btnAdd_Click" />
        <asp:Button ID="btnSubtract" runat="server" Text="-"  Width="40px" OnClick="btnSubtract_Click" style="height: 21px" />
        <asp:Button ID="btnEqual" runat="server" Text="="  Width="40px" OnClick="btnEqual_Click" />
    </form>
</body>
</html>
