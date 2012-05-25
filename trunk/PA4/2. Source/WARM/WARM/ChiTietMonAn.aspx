<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ChiTietMonAn.aspx.cs" Inherits="WARM.ChiTietMonAn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">    
    <link type="text/css" rel="stylesheet" href="../Styles/ChiTietMonAn.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>    
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap-modal.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#MessageForm').modal('hide');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td>
                <ul id="nav">
                    <li><a href="../Default.aspx">Trang Chủ > </a></li>
                    <li><a href="../DatMon.aspx">Món mặn > </a>
                        <ul>
                            <li><a href="../DangKy.aspx" class="sub">Đăng ký</a></li>
                            <li><a href="../DatMon.aspx" class="sub">Đặt món</a></li>
                            <li><a href="../DatBan.aspx" class="sub">Đặt bàn</a></li>
                            <li><a href="../TimKiemNangCao.aspx" class="sub">Tìm nâng cao</a></li>
                            <li><a href="../About.aspx" class="sub">Giới thiệu</a></li>
                        </ul>
                    </li>
                    <li><a class="current">Chi tiết món</a> </li>
                </ul>
            </td>
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
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td style="padding-right: 10px" valign="top">
                                                <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                            </td>
                                            <td valign="top" width="50%" style="padding-right: 20px">
                                                <a href="ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>">
                                                    <%# Eval("TenMonAn") %></a><br />
                                                <font class="fontblack"><b>Giá:
                                                    <%# Eval("Gia", "{0:0,000}")%>
                                                    VND</b></font>
                                                <br />
                                                <font class="fontblackjustify">
                                                    <%# Eval("MoTa") %></font> </a>
                                                <br />
                                            </td>
                                            <td valign="top" width="30%" style="padding-right: 10px">
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        <font class="fontblack">Số lượng món/bàn:</font>&nbsp;&nbsp;&nbsp;
                                                        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ButtonGiam_Click" ImageUrl="~/images/ArrowDown.png"
                                                            AlternateText="v" Width="16px" Height="16px" />
                                                        <asp:TextBox ID="tbSoLuong" runat="server" Width="20px" Text="1"></asp:TextBox>
                                                        <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ButtonTang_Click" ImageUrl="~/images/ArrowUp.png"
                                                            AlternateText="^" Width="16px" Height="16px" />
                                                        <br />
                                                        <%--<asp:Button ID="btDatMon" runat="server" CssClass="btn btn-primary" Text="Đặt món"
                                                            OnClick="DatMon_Click" />--%>
                                                        <a data-toggle="modal" href="#MessageForm" class="btn btn-primary" style="text-decoration: none;
                                                            color: White">Đặt món</a>
                                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# "" + Eval("MaMonAn") %>' />
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </td>
                                            <td valign="top" width="30%">
                                                <br />
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
                                                <font class="fontblack">
                                                    <%# Eval("DanhGia") %></a> lời bình</font><br />
                                                <br />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
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
    <td valign="top" width="50%" align="left" style="color: #FF0000; font-size: large;">
        <span class="style1" style="color: #FF0000">Lời bình:</span>
    </td>
    <br />
    <asp:Image ID="Image1" runat="server" Height="21px" ImageUrl="~/images/binhluan.jpg" />
    <a href="#top">Thêm lời bình</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton
        ID="LinkButton1" runat="server" EnableTheming="False" OnClick="LinkButton1_Click"
        ForeColor="Blue">Mới nhất</asp:LinkButton>
    |&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"
        ForeColor="Blue">Cũ nhất</asp:LinkButton>
    <table width="100%">
        <tr>
            <td>
                <asp:Repeater ID="rptPages1" runat="server">
                    <FooterTemplate>
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
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="borderRound">
                                                <table>
                                                    <tr>
                                                        <td valign="top" width="10%">
                                                            <asp:Image ID="Image2" runat="server" Height='80px' ImageUrl="~/images/Avatar.jpg" />
                                                        </td>
                                                        <td valign="top" width="55%">
                                                            <strong>
                                                                <%# Eval("NguoiBinhLuan") %></strong>
                                                            <br />
                                                            <div>
                                                                <%                                                         
                                                        int nStar = 5;
                                                        for (int i = 0; i < nStar; i++)
                                                        {
                                                            if (i != nStar-1)%>
                                                                <input name='star1<%# Eval("MaBinhLuan") %>' type='radio' class='star' disabled='disabled' />
                                                                <% else %>
                                                                <input name='star1<%# Eval("MaBinhLuan") %>' type='radio' class='star' disabled='disabled'
                                                                    checked='checked' />
                                                                <%}%>
                                                            </div>
                                                            <br />
                                                            <font class="fontblack">
                                                                <%# Eval("NoiDung") %></font>
                                                        </td>
                                                        <td valign="top" width="25%">
                                                            <font class="fontblack">Đăng lúc <%# Eval("ThoiGian") %></font>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table width="100%" style="height: 315px">
        <tr>
            <td valign="top" align="left" style="color: #FF0000; font-size: large;" class="style2">
                <a name="top"></a><span class="style1" style="color: #FF0000">Thêm lời bình:</span>
            </td>
            <td valign="top" align="left" class="style7">
                &nbsp;
            </td>
            <td valign="top" align="left" class="style5">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top" align="left" style="color: #000000; font-size: small;" class="style2">
                Họ tên (*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td valign="top" align="left" class="style7">                
                <asp:TextBox ID="textten" runat="server" Width="343px"></asp:TextBox>
            </td>
            <td valign="top" align="left" class="style5">
                <asp:Literal ID="Literal1" runat="server" Text="Bạn chưa nhập họ tên" Visible="False"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td valign="top" align="left" style="color: #000000; font-size: small;" class="style3">
                Đánh giá (*)
            </td>
            <td valign="top" align="left" class="style8">
                <div style="width: 118px">
                    <input name="star2" type="radio" class="star" value="1" />
                    <input name="star2" type="radio" class="star" value="2" />
                    <input name="star2" type="radio" class="star" value="3" />
                    <input name="star2" type="radio" class="star" value="4" />
                    <input name="star2" type="radio" class="star" value="5" />
                </div>
            </td>
            <td valign="top" align="left" class="style6">
                <asp:Literal ID="Literal2" runat="server" Text="Bạn chưa đánh giá món ăn" Visible="False"></asp:Literal>
            </td>
            <td valign="top" width="50%" align="left" class="style4">
            </td>
        </tr>
        <tr>
            <td valign="top" align="left" style="color: #000000; font-size: small;" class="style2">
                Nội dung (*)<br />
                <br />
            </td>
            <td valign="top" align="left" class="style7">
                
                <asp:TextBox ID="textnoidung" runat="server" Height="191px" Width="345px" Style="text-align: left"
                    TextMode="MultiLine"></asp:TextBox>
                
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Đăng lời bình"
                    OnClick="Button1_Click" />
            </td>
            <td valign="top" align="left" class="style5">
                <asp:Literal ID="Literal3" runat="server" Text="Bạn chưa nhập nội dung" Visible="False"></asp:Literal>
            </td>
        </tr>
    </table>
    <div class="modal hide" id="MessageForm">
        <div class="modal-header">
            <b><font class="fontblack">Đặt món thành công</font></b>
        </div>
        <div class="modal-body">
            <font class="fontblack">Bạn đã đặt món <b>Phở Bắc Hải</b>, số lượng là <b>1</b> món/bàn.</font><br />
            <font class="fontblack">Bạn có thể tiếp tục đặt món hoặc chuyển sang </font><a href="DatBan.aspx">đặt bàn</a>.
        </div>
        <div class="modal-footer">            
            <a data-dismiss="modal" class="btn btn-primary close">Tiếp tục</a>
        </div>
    </div>
</asp:Content>
