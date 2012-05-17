<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="WARM._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
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
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width: 100%;">
        <tr>
            <td align="left" class="style1" valign="top" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="274px" ImageUrl="~/images/TrangChu/NhaHang.jpg"
                    Style="text-align: left; margin-left: 0px" Width="440px"/>
            </td>
            <td class="style2" valign="top" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" Height="40px" NavigateUrl="~/ThamQuan/ChonTang.aspx"
                    Font-Underline="false" Style="font-weight: 700; font-size: xx-large; text-align: left;"
                    Width="343px">NHÀ HÀNG WARM</asp:HyperLink>
                <br />
                <br />
                <font class="fontblack">
                    <asp:Label ID="Label9" runat="server" Text="Nhà hàng WARM của chúng tôi với nghệ thuật phục vụ ẩm thực theo các phong cách Á, Âu cùng đội ngũ nhân viên lành nghề sẽ làm hài lòng quí vị. Nhà hàng WARM đã tổ chức hàng trăm lượt tiệc chiêu đãi với nhiều hình thức khác nhau. Nhà hàng WARM đã được phục vụ hàng chục vạn thực khách đến thưởng thức. Ngoài ra, tiệc khách sạn còn có các quầy bar phục vụ quý khách."></asp:Label></font>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top" colspan="2">
                <hr />
                <asp:HyperLink ID="HyperLink12" runat="server" ForeColor="#CC0000" Style="font-weight: 700;
                    font-size: large">Món Ngon:</asp:HyperLink>
            </td>
            <td style="width: 301px" colspan="2">
                <hr style="width: 398px" />
                <asp:HyperLink ID="HyperLink13" runat="server" ForeColor="#CC0000" Style="font-weight: 700;
                    font-size: large">Bàn Vip:</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="left" valign="top" style="width: 99px">
                <asp:Image ID="Image2" runat="server" Height="73px" ImageUrl="~/images/MonAn/PhoBacHai.jpg"
                    Width="99px" />
            </td>
            <td align="left" valign="top">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ChiTietMonAn.aspx?id=1">Phở Bắc Hải</asp:HyperLink>
                <br />
                <font class="fontblack">
                    <asp:Label ID="Label6" runat="server" Text="Giá: 30.000 VND"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Phở nóng hổi vừa thổi vừa ăn, giá rẻ bất ngờ..."></asp:Label></font>
            </td>
            <td align="left" valign="top">
                <asp:Image ID="Image3" runat="server" Height="73px" ImageUrl="~/images/DanhMucBan/VipA.jpg"
                    Width="95px" />
            </td>
            <td style="width: 301px" align="left" valign="top">
                <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Default.aspx">Bàn Vip A</asp:HyperLink>
                <br />
                <font class="fontblack">
                <asp:Label ID="Label8" runat="server" Text="Bàn có chỗ ngồi thoải mái, góc nhìn rộng rãi, phục vụ bàn chu đáo..."></asp:Label>
                </font>
            </td>
        </tr>
        <td align="left" valign="top" colspan="2" rowspan="1">
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
        <td align="left" valign="top" colspan="2" rowspan="1">
            <ul>
                <li class="style3">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Default.aspx">Bàn Vip B</asp:HyperLink>
                    <br />
                </li>
                <li class="style3">
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Default.aspx">Bàn Vip C</asp:HyperLink>
                    <br />
                    <br />
                </li>
                <li class="style3">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Default.aspx">Bàn ngoài trời</asp:HyperLink>
                    <br />
                    <br />
                </li>
                <li class="style3">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Default.aspx">Bàn thường</asp:HyperLink>
                    <br />
                    <br />
                </li>
            </ul>
        </td>
    </table>
</asp:Content>
