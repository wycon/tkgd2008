<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DatMon.aspx.cs" Inherits="WARM.DatMon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="ddlSoKetQua" runat="server" 
        onselectedindexchanged="ddlSoKetQua_SelectedIndexChanged" 
        AutoPostBack="True">        
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
    </asp:DropDownList>
    <asp:Repeater ID="rptPages" runat="server" OnItemCommand="rptPages_ItemCommand">
        <HeaderTemplate>
            <table cellpadding="0" cellspacing="0" border="0">
                <tr class="text">
                    <td>
                        <b>Trang:</b>&nbsp;
                    </td>
                    <td>
        </HeaderTemplate>
        <ItemTemplate>
            <asp:LinkButton ID="btnPage" CommandName="Page" CommandArgument="<%#
                         Container.DataItem %>" CssClass="text" runat="server"><%# Container.DataItem %>
            </asp:LinkButton>&nbsp;
        </ItemTemplate>
        <FooterTemplate>
            </td> </tr> </table>
        </FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="rptItems" runat="server">
        <HeaderTemplate>
            <ul>
        </HeaderTemplate>
        <ItemTemplate>
            <li>
                <%# Eval("MaMonAn") %>:
                <%# Eval("TenMonAn") %>
                <%# Eval("Gia", "{0:0,000}")%> VND
            </li>
            <img src='<%# Eval("Anh") %>' width='120' height='100'/>
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
