<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProShow.aspx.cs" Inherits="ProShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            分类名：<asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryId" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="gvProduct" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="gvProduct_PageIndexChanging" PageSize="1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td rowspan="4" class="auto-style2">
                                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Bind("Image") %>' />
                                </td>
                                <td class="auto-style5" style="text-align:right">商品名称：</td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style6">商品价格：</td>
                                <td>
                                    <asp:Label ID="lblListPrice" runat="server" Text='<%# Bind("ListPrice") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style5">商品描述：</td>
                                <td class="auto-style1">
                                    <asp:Label ID="lblDescn" runat="server" Text='<%# Bind("Descn") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right" class="auto-style6">库存：</td>
                                <td>
                                    <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="~/ShopCart.aspx?ProductId={0}" HeaderText="放入购物车" Text="购买" />
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPrevious" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
        </asp:GridView>
    </form>
</body>
</html>
