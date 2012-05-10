<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TimKiem.aspx.cs" Inherits="WARM.TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true">
    </asp:ScriptManager>    
    <table width="100%">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td>
                <%--Sắp theo tên: <a href="javascript:void(0);" onclick="SapTenTang()">tăng</a>/ <a href="javascript:void(0);"
                            onclick="SapTenGiam()">giảm</a>&nbsp;&nbsp;&nbsp; Sắp theo giá: <a href="javascript:void(0);"
                                onclick="SapTenTang()">tăng</a>/<a href="javascript:void(0);">giảm</a>--%>
                Sắp theo tên:
                <a href="DatMon.aspx?s=aname">tăng</a>
                / <a href="DatMon.aspx?s=dname">giảm</a>&nbsp;&nbsp;&nbsp;
                Sắp theo giá: <a href="DatMon.aspx?s=aprice">tăng</a> / <a href="DatMon.aspx?s=dprice">giảm</a>
            </td>
            <td>
                <b>Số lượng hiển thị:</b>
                <asp:DropDownList ID="ddlSoKetQua" runat="server" OnSelectedIndexChanged="ddlSoKetQua_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
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
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td style="padding-right: 10px">
                                                <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                            </td>
                                            <td valign="top" width="50%">
                                                <a href="ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>">
                                                    <%# Eval("TenMonAn") %></a><br />
                                                Giá:
                                                <%# Eval("Gia", "{0:0,000}")%>
                                                VND<br />
                                                <%# Eval("MoTa") %></a><br />
                                            </td>
                                            <td valign="top" width="30%">
                                                <br />
                                                <div>
                                                    <%--<% for (int i = 0; i < int.Parse(Eval("DanhGia").ToString()); ++i)
                                                       {
                                                           if (i != int.Parse(Eval("DanhGia").ToString()))                                                               
                                                               //Response.Write("<input name='star0" + Eval("MaMonAn") + " type='radio' class='star' disabled='disabled'/>");
                                                           //else
                                                               //Response.Write("<input name='star0" + Eval("MaMonAn") + " type='radio' class='star' disabled='disabled' checked='checked'/>");
                                                       }
                                                    %>--%>
                                                    <%--                                             <% 
                                                        int r = new Random().Next();
                                                            
                                                        for (int i = 0; i < 4; i++)
                                                       {
                                                           if (i != 4)
                                                               Response.Write("<input name='star0" + r + "' type='radio' class='star' disabled='disabled'/>");
                                                           else
                                                               Response.Write("<input name='star0" + r + "' type='radio' class='star' disabled='disabled' checked='checked'/>");

                                                       }%>--%>
                                                    <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled' />
                                                    <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled' />
                                                    <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled' />
                                                    <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled' />
                                                    <input name='star0<%# Eval("MaMonAn") %>' type='radio' class='star' disabled='disabled'
                                                        checked='checked' />
                                                </div>
                                                <br />
                                                    <%# Eval("DanhGia") %></a> lời bình<br />
                                                <br />
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
