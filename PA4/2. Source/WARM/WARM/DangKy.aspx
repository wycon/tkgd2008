<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DangKy.aspx.cs" Inherits="WARM.DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>

    <style type="text/css">
        .style1
        {
            width: 59%;
        }
    </style>
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
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
                            <asp:Label ID="Label3" runat="server" Text="Để đặt bàn thành công, bạn vui lòng đăng nhập."
                                ForeColor="Black" Font-Bold="true"></asp:Label>                            
                        </td>
                    </tr>
                    <tr>
                        <td width="30%">
                            <font class="fontblack">
                                <asp:Label ID="Label4" runat="server" Text="Tên đăng nhập:"></asp:Label></font>
                        </td>
                        <td>
                            <font class="fontblack">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Mật khẩu:</font>
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
                            <dir dir="rtl" style="width: 140px">
                                <asp:Button ID="btnDangNhap" runat="server" Height="27px" Text="Đăng nhập" Width="80px" />
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
                            <asp:Label ID="Label1" runat="server" Text="Nếu bạn chưa có tài khoản, bạn có thể đăng ký tại đây."
                                ForeColor="Black" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Tên đăng nhập (*):</font>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNTen" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                            <asp:Label ID="LabelNTen" runat="server" ForeColor="#FF3300"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Mật khẩu (*): </font>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNPass" runat="server" TextMode="Password" OnTextChanged="txtNPass_TextChanged"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNPass"
                                Display="Dynamic" ErrorMessage="Mật khẩu phải có 6 - 12 ký tự" ForeColor="#FF3300"
                                ValidationExpression="\w{6,12}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Nhập lại mật khẩu (*):</font>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNRePass" runat="server" TextMode="Password" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNPass"
                                ControlToValidate="txtNRePass" Display="Dynamic" ErrorMessage="Mật khẩu nhắc lại không trùng."
                                ForeColor="#FF3300"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Điện thoại (*):</font>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">Email:</font>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <dir dir="rtl" style="width: 140px">
                                <asp:Button ID="btnDangKy" runat="server" Height="27px" Text="Đăng ký" Width="89px" />
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
                <table width="100%" border="0">
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
