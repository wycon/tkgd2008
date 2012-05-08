<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DatMon.aspx.cs" Inherits="WARM.DatMon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="100%">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td>
                Sắp theo tên: <a href="#">tăng</a>/<a href="#">giảm</a>&nbsp;&nbsp;&nbsp; Sắp theo
                giá: <a href="#">tăng</a>/<a href="#">giảm</a>
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
                                                       <input name='star0<%# Eval("TenMonAn") %>' type='radio' class='star' disabled='disabled'/>
                                                       <input name='star0<%# Eval("TenMonAn") %>' type='radio' class='star' disabled='disabled'/>
                                                       <input name='star0<%# Eval("TenMonAn") %>' type='radio' class='star' disabled='disabled'/>
                                                       <input name='star0<%# Eval("TenMonAn") %>' type='radio' class='star' disabled='disabled'/>
                                                       <input name='star0<%# Eval("TenMonAn") %>' type='radio' class='star' disabled='disabled' checked='checked'/>
                                                </div>
                                            </td>
                                            <td valign="top" width="30%">
                                                Số lượng món/bàn:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbSoLuong" runat="server" Width="20px"
                                                    Text="1"></asp:TextBox>
                                                <br />
                                                <input id="bt1" type="button" value="Đặt món" onclick="datMon('<%# Eval("MaMonAn")%>', '<%# Eval("TenMonAn")%>', '<%# Eval("Gia")%>')" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </ul>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </table>
                        </td>
                        <td valign="top">
                            <table width="100%" height="100%" class="phieudat">
                                <tr>
                                    <td align="center">
                                        <font class="fontred">Phiếu đặt món</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div id="phieudatmon">
                                        </div>
                                    </td>
                                </tr>
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
