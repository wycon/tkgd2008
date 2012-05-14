<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WARM.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 59%;
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
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" height="30">
                            <asp:Label ID="Label3" runat="server" Text="Để đặt bàn thành công, bạn vui lòng đăng nhập"
                                ForeColor="#FF3300"></asp:Label>
                            .
                        </td>
                    </tr>
                    <tr>
                        <td width="25%">
                            <asp:Label ID="Label4" runat="server" Text="Tên đăng nhập"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mật khẩu
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DangKy.aspx">Quên mật khẩu</asp:HyperLink>
                        </td>
                        <td>
                            <dir dir="rtl" style="width: 146px; margin-right: 29px">
                                <asp:Button ID="Button1" runat="server" Height="29px" Text="Đăng nhập" Width="89px" />
                            </dir>
                        </td>
                    </tr>
                    <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                    </tr>
                    <tr>
                    <td colspan="3" height="30">
                        <asp:Label ID="Label1" runat="server" Text="Nếu bạn chưa có tài khoản, bạn có thể đăng ký tại đây"
                            ForeColor="#FF3300"></asp:Label>
                        .
                    </td>
                    </tr>
                    <tr>
                        <td>
                            Tên đăng nhập
                        </td>
                        <td>
                            <asp:TextBox ID="txtNTen" runat="server" AutoPostBack="True" 
                                ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                            <asp:Label ID="LabelNTen" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mật khầu
                        </td>
                        <td>
                            <asp:TextBox ID="txtNPass" runat="server" TextMode="Password" 
                                ontextchanged="txtNPass_TextChanged"></asp:TextBox>
                            <asp:Label ID="LabelNPass" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Nhắc lại mật khẩu
                        </td>
                        <td>
                            <asp:TextBox ID="txtNRePass" runat="server" TextMode="Password" 
                                ontextchanged="TextBox6_TextChanged" AutoPostBack="True"></asp:TextBox>
                                
                            <asp:Label ID="LabelRePass" runat="server" ForeColor="#FF3300"></asp:Label>
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
                            Email
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <dir dir="rtl" style="width: 148px">
                                <asp:Button ID="Button2" runat="server" Height="29px" Text="Đăng ký" Width="89px" />
                            </dir>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%"  border="0">
                    <tr>
                        <td colspan="3">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <font class="fontred">
                        Phiếu đặt món</tr>
                    <tr>
                        <td>
                            <div id="Div2">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <hr />
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
