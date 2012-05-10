<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ChiTietMonAn.aspx.cs" Inherits="WARM.ChiTietMonAn" %>

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
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="rptPages" runat="server">                    
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
                                                Số lượng món/bàn:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tbSoLuong" runat="server" Width="20px"
                                                    Text="1"></asp:TextBox>
                                                <br />
                                                <input id="bt1" type="button" value="Đặt món" onclick="DatMon('<%# Eval("MaMonAn")%>', '<%# Eval("TenMonAn")%>', '<%# Eval("Gia")%>')" />
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
