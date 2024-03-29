﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="WARM._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/ddimgtooltip.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/breadcrumbs.js"></script>
    <script type="text/javascript" src="../Scripts/ddimgtooltip.js"></script>
    <style type="text/css">
        .style1
        {
            height: 174px;
        }
        .style2
        {
            height: 174px;
        }
        .style3
        {
            height: 20px;
        }
        .style4
        {
            width: 93px;
        }
    </style>
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 100%;">
        <tr>
            <td class="style1" valign="top" colspan="2" align="center">
                <asp:Image ID="Image1" runat="server" Height="274px" ImageUrl="~/images/TrangChu/NhaHang.jpg"
                    Style="text-align: left; margin-left: 0px" Width="420px" />
            </td>
            <td class="style2" valign="top" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" Height="40px" NavigateUrl="~/ThamQuan/ChonTang.aspx"
                    Font-Underline="false" Style="font-weight: 700; font-size: xx-large; text-align: left;"
                    Width="343px">NHÀ HÀNG WARM</asp:HyperLink>
                <br />
                <br />
                <font class="fontblack">
                    <asp:Label ID="Label9" runat="server" Text="Nhà hàng WARM của chúng tôi với nghệ thuật phục vụ ẩm thực theo các phong cách Á, Âu cùng đội ngũ nhân viên lành nghề sẽ làm hài lòng quí vị. Nhà hàng WARM đã tổ chức hàng trăm lượt tiệc chiêu đãi với nhiều hình thức khác nhau. Nhà hàng WARM đã được phục vụ hàng chục vạn thực khách đến thưởng thức. Ngoài ra, tiệc khách sạn còn có các quầy bar phục vụ quý khách."></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink14" runat="server" ForeColor="#CC0000" Style="font-weight: 700;
                        font-size: large">Giải thưởng nhà hàng:</asp:HyperLink>
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="77px" Width="90px" ImageUrl="~/images/TrangChu/giaithuong1.jpg"
                        rel="imgtip[0]" />
                    <asp:Image ID="Image5" runat="server" Height="74px" Width="95px" ImageUrl="~/images/TrangChu/giaithuong2.jpg"
                        rel="imgtip[1]" />
                    <asp:Image ID="Image6" runat="server" Height="74px" Width="95px" ImageUrl="~/images/TrangChu/giaithuong3.jpg"
                        rel="imgtip[2]" />
                    <asp:Image ID="Image7" runat="server" Height="74px" Width="95px" ImageUrl="~/images/TrangChu/giaithuong4.jpg"
                        rel="imgtip[3]" />
                </font>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top" colspan="2" class="borderRound">
                <table>
                    <tr>
                        <td colspan="2">
                            <asp:HyperLink ID="HyperLink15" runat="server" ForeColor="#CC0000" Style="font-weight: 700;
                                font-size: large">Đặc sản</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top" class="style4">
                            <asp:Image ID="Image2" runat="server" Height="73px" ImageUrl="~/images/MonAn/PhoBacHai.jpg"
                                Width="91px" />
                        </td>
                        <td align="left" valign="top">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=1">Phở Bắc Hải</asp:HyperLink>
                            <br />
                            <font class="fontblack">
                                <asp:Label ID="Label6" runat="server" Text="Giá: 30,000 VND"></asp:Label>
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="Phở nóng hổi vừa thổi vừa ăn, giá rẻ bất ngờ. Đa số người Bắc đang sống ở Sài Gòn vẫn tìm đến phở..."></asp:Label></font>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top" colspan="2">
                            <ul>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=2">Thịt nguội xắt lát</asp:HyperLink>
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=3">Bánh nướng sốt thịt</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=4">Chả giò luộc</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=5">Cơm chiên Dương Châu</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top" colspan="2">
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Default.aspx?">Xem thêm</asp:HyperLink>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 301px" colspan="2" class="borderRound">
                <table>
                    <tr>
                        <td colspan="2">
                            <asp:HyperLink ID="HyperLink13" runat="server" ForeColor="#CC0000" Style="font-weight: 700;
                                font-size: large">Tin tức</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top">
                            <asp:Image ID="Image3" runat="server" Height="73px" ImageUrl="~/images/Coffee.jpg"
                                Width="90px" />
                        </td>
                        <td style="width: 301px" align="left" valign="top">
                            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Default.aspx">Không nên uống cafe trước khi chơi thể thao</asp:HyperLink>
                            <br />
                            <font class="fontblack">
                                <asp:Label ID="Label8" runat="server" Text="Cà phê có tác dụng kích thích sự hưng phấn của trí não, giảm cảm giác mệt mỏi, kích thích hệ thần kinh.Bởi thế, nhiều người đã nhấm nháp..."></asp:Label>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top" colspan="2" rowspan="1">
                            <ul>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Default.aspx">Ăn nội tạng động vật không tốt cho sinh lý nam giới</asp:HyperLink>
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Default.aspx">Khẩu phần ăn ảnh hưởng tới số lượng tinh trùng</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Default.aspx">Ăn táo mỗi ngày để giảm nguy cơ ung thư ruột</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                                <li class="style3">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx">Lễ hội ẩm thực văn hóa &quot;Ngày hội quê tôi&quot;</asp:HyperLink>
                                    <br />
                                    <br />
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top" colspan="2">
                            <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Default.aspx?">Xem thêm</asp:HyperLink>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
