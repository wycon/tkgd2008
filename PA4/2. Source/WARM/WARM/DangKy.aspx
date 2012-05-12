<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WARM.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 50%;
        }
    </style>
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
            <td class="style1">
                <table width="100%" style="height: 105px">
                    <tr>
                        <td colspan="3">
                           <asp:Label ID="Label3" runat="server" 
                                Text="Để hoàn tất việc đặt bàn, bạn vui lòng đăng nhập"></asp:Label> 
                        </td>
                
                    </tr>
                    <tr>
                        <td>
                             <asp:Label ID="Label4" runat="server" Text="Tên đăng nhập"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mật khẩu</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DangKy.aspx">Quên mật khẩu?</asp:HyperLink>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Height="29px" Text="Đăng nhập" 
                                Width="89px" />
                        </td>
                    </tr>
                    <tr>
                    <td colspan="3">
                        <hr />&nbsp;</td >
                    </tr>
                    <tr>
                    <td colspan="3">
                    <asp:Label ID="Label1" runat="server" 
                                Text="Nếu bạn chưa có tài khoản, bạn có thể đăng ký tại đây"></asp:Label> 
                    </td >
                    </tr>
                    <tr>
                    <td>
                        Tên đăng nhập</td>
                    <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Mật khầu</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Nhắc lại mật khẩu</td>
                    <td>
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Điện thoại
                    </td>
                    <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        Email</td>
                    <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Height="29px" Text="Đăng ký" 
                            Width="89px" />
                    </td>
                    </tr>
                    <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%" height="100%" class="phieudat">
                    <tr>
                        <td align="center">
                            <font class="fontred">Phiếu đặt món</tr>
                    <tr>
                        <td>
                            <div id="Div2">
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
