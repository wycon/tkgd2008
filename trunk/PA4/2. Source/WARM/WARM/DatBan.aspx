<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatBan.aspx.cs" Inherits="WARM.DatBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
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
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td>
                
            </td>
        </tr>
        <tr>
            <td colspan="3" width="100%">
                <table width="100%">
                    <tr>
                        <td width="60%">
                            <table width="100%">
                                <asp:Repeater ID="rptItems" runat="server" >
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td colspan="3">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-right: 10px">
                                                <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                            </td>
                                            <td valign="top" width="50%">
                                                <a >
                                                    <%# Eval("Ten") %></a><br />
                                                    <%# Eval("MoTa") %>  
                                                <div>
                                                  
                                                </div>
                                            </td>
                                            <td valign="top" width="30%">
                                                <%--<input id="bt1" type="button" value="Đặt món" onclick="DatMon('<%# Eval("MaMonAn")%>', '<%# Eval("TenMonAn")%>', '<%# Eval("Gia")%>')" />--%>
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        Số lượng bàn:&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="tbSoLuong" runat="server" Width="20px" Text="1"></asp:TextBox>
                                                        <%--<input id="sl0<%# Eval("MaMonAn")%>" type="text" value="1" size="3" />--%>
                                                        <br />
                                                        <asp:Button ID="Button1" runat="server" Text="Đặt bàn" OnClick="DatBanClick" />
                                                      
                                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# "" + Eval("MaDMBanAn") %>'/>                                                        
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
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
                            <table width="100%" height="100%">
                                <tr>
                                    <td colspan="3">
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <font class="fontred">Phiếu đặt bàn</font>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:HyperLink ID="hpHoanTatDatBan" runat="server" NavigateUrl="DatBan.aspx">Hoàn tất đặt món</asp:HyperLink><br />
                                                Tổng tiền một bàn: <asp:Label ID="TongTien" runat="server" Text="0,000"></asp:Label> VND<br />
                                                
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
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
