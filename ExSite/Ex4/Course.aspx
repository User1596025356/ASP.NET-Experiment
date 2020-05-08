<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Ex4_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            学年：<asp:DropDownList ID="dd1Year" runat="server" AutoPostBack ="true">
            </asp:DropDownList>
            学期：<asp:DropDownList ID="dd1Term" runat="server" AutoPostBack ="true">
            </asp:DropDownList>
            分院：<asp:DropDownList ID="dd1College" runat="server" AutoPostBack ="true" OnSelectedIndexChanged="dd1College_SelectedIndexChanged">
            </asp:DropDownList>
            教师：<asp:DropDownList ID="dd1Teacher" runat="server" AutoPostBack ="true">
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
