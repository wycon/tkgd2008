<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ChiTietMonAn.aspx.cs" Inherits="WARM.ChiTietMonAn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
    <style type="text/css">
        .style1
        {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true">
    </asp:ScriptManager>    
    <table width="100%">
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
            <td width="100%">
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
        </tr>
    </table>
    <hr />
    <td valign="top" width="50%" align="left" 
        style="color: #FF0000; font-size: large;"><span class="style1" 
        style="color: #FF0000">Lời bình:</span>
    </td>
    <br />
        <asp:Image ID="Image1" runat="server" Height="21px" 
        ImageUrl="~/images/binhluan.jpg" />
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" 
            style="font-size: small; text-decoration: underline">Thêm lời bình</asp:HyperLink>
        <br />
        <table width="100%">
        <tr>
            <td>
                <asp:Repeater ID="rptPages1" runat="server">                    
                    <FooterTemplate>
                        </td> </tr> </table>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td width="100%">
                <table width="100%">

                    <tr>
                        <td width="60%">
                            <table width="100%">
                                <asp:Repeater ID="rptItems2" runat="server">
                                    <HeaderTemplate>
                                        <ul>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td style="padding-right: 10px"> 
                                            </td>
                                            <td valign="top" width="50%">
                                            <hr />
                                            <strong>
                                                <%# Eval("NguoiBinhLuan") %></a>
                                            </strong>
                                            <br />
                                                <%# Eval("NoiDung") %></a>
                                            <br />
                                                Đánh giá: 
                                                <input name='star0<%# Eval("DanhGia") %>' type='radio' class='star' disabled='disabled' />
                                                <input name='star0<%# Eval("DanhGia") %>' type='radio' class='star' disabled='disabled' />
                                                <input name='star0<%# Eval("DanhGia") %>' type='radio' class='star' disabled='disabled' />
                                                <input name='star0<%# Eval("DanhGia") %>' type='radio' class='star' disabled='disabled' />
                                                <input name='star0<%# Eval("DanhGia") %>' type='radio' class='star' disabled='disabled' checked='checked' />                                               
                                            </td>
                                            <td valign="top" width="30%">     
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
            </tr>
        </table>
</asp:Content>
