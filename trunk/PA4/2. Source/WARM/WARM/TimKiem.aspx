<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TimKiem.aspx.cs" Inherits="WARM.TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td colspan="3">
                <ul class="breadcrumb">
                    <li><a href="Default.aspx">Trang chủ</a> <span class="divider">&gt;</span> </li>
                    <li class="active"><span style="margin-top: -5px; display: inline-block;" class="label label-important">
                        Tìm kiếm</span></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="padding-right: 30px;">
                &nbsp;<font class="fontblack">Sắp theo tên:
                    <asp:HyperLink ID="hpAName" runat="server" NavigateUrl="TimKiem.aspx?s=aname">A-Z</asp:HyperLink>
                    /
                    <asp:HyperLink ID="hpDName" runat="server" NavigateUrl="TimKiem.aspx?s=dname">Z-A</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp; Sắp theo giá:
                    <asp:HyperLink ID="hpAPrice" runat="server" NavigateUrl="TimKiem.aspx?s=aprice">tăng</asp:HyperLink>
                    /
                    <asp:HyperLink ID="hpDPrice" runat="server" NavigateUrl="TimKiem.aspx?s=dprice">giảm</asp:HyperLink>
                </font>
            </td>
            <td>
                <div class="pagination">
                    <ul>
                        <li><a href="#">Đầu</a></li>
                        <li class="active"><a href="#">1</a> </li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">Cuối</a></li>
                    </ul>
                </div>
            </td>
            <td align="right">
                <b>Số lượng hiển thị:</b>
                <asp:DropDownList ID="ddlSoKetQua" runat="server" OnSelectedIndexChanged="ddlSoKetQua_SelectedIndexChanged"
                    AutoPostBack="True" Width="50px">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;<font class="fontblack">Hiển thị từ 1-<%= nResultVar %>của 12 kết quả với từ khóa "<%= yourvar %>"</font><br />
                <asp:Repeater ID="rptPages" runat="server" OnItemCommand="rptPages_ItemCommand">
                    <HeaderTemplate>
                        <%--<table cellpadding="0" cellspacing="0" border="0">
                            <tr class="text">
                                <td>
                                    <b>Trang:</b>&nbsp;
                                </td>
                                <td>--%>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="btnPage" CommandName="Page" CommandArgument="<%#
                         Container.DataItem %>" CssClass="text" runat="server"><%# Container.DataItem %>
                        </asp:LinkButton>&nbsp;--%>
                    </ItemTemplate>
                    <FooterTemplate>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td colspan="3" width="100%">
                <table width="100%">
                    <tr>
                        <td width="60%">
                            <table width="100%">
                                <asp:Repeater ID="rptItems" runat="server">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="borderRound">
                                                <table>
                                                    <tr>
                                                        <td valign="top" width="15%">
                                                            <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                                        </td>
                                                        <td valign="top" width="65%" style="padding-left: 20px">
                                                            <a href="ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>">
                                                                <%# Eval("TenMonAn") %></a><br />
                                                            <font class="fontblack">
                                                            <b>Giá: <%# Eval("Gia", "{0:0,000}")%> VND</b><br />
                                                                <%# Eval("MoTa") %></a></font><br />
                                                        </td>
                                                        <td valign="top" style="padding-left: 20px">
                                                            <div>
                                                                <%                                                         
                                                        int nStar = 5;
                                                        for (int i = 0; i < nStar; i++)
                                                        {
                                                            if (i != nStar-1)%>
                                                                <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled' />
                                                                <% else %>
                                                                <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled'
                                                                    checked='checked' />
                                                                <%}%>
                                                            </div>
                                                            <br />
                                                            <%# Eval("DanhGia") %></a> lời bình<br />
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
