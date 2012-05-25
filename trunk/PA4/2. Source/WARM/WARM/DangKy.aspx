<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DangKy.aspx.cs" Inherits="WARM.DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap-modal.js"></script>
    <%--<script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>--%>
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <style type="text/css">
        .style1
        {
            width: 59%;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#MessageForm').modal('hide');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td colspan="3">
                <ul id="nav">
                    <li><a href="../Default.aspx">Trang Chủ > </a></li>
                    <li><a href="../DatMon.aspx">Đặt món > </a></li>
                    <li><a href="../DatBan.aspx">Đặt bàn > </a></li>
                    <li><a class="arrow current">Đăng Ký</a>
                        <ul>
                            <li><a href="../ThamQuan/ChonTang.aspx" class="sub">Tham quan</a></li>
                            <li><a href="../TimKiemNangCao.aspx" class="sub">Tìm nâng cao</a></li>
                            <li><a href="../About.aspx" class="sub">Giới thiệu</a></li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <table width="100%" style="height: 105px" class='borderRound'>
                    <tr>
                        <td colspan="3">
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
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DangKy.aspx">Quên mật khẩu?</asp:HyperLink>
                        </td>
                        <td>
                            <dir dir="rtl" style="width: 140px">
                                <a data-toggle="modal" href="#MessageForm" class="btn btn-primary" style="text-decoration: none;
                                    color: White">Đăng nhập</a>
                            </dir>
                        </td>
                    </tr>
                </table>
                <br />
                <table width="100%" class='borderRound'>
                    <tr>
                        <td colspan="3" height="30">
                            <asp:Label ID="Label1" runat="server" Text="Nếu bạn chưa có tài khoản, bạn có thể đăng ký tại đây."
                                ForeColor="Black" Font-Bold="true"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%">
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
                                <asp:Button ID="btnDangKy" runat="server" Height="27px" Text="Đăng ký" Width="89px"
                                    CssClass="btn btn-primary" />
                            </dir>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="borderRound">
                            <font class="fontred">Phiếu đặt bàn</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        <%if (Session["ChiTietBans"] != null)
                                          { %>
                                        Tổng tiền: 500.000 VND<br />
                                        Thời gian đặt bàn: 8 Giờ 00 Phút Ngày 26/05/2012<br />
                                        <%
                                            } %>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True">
                                            <Columns>
                                                <asp:TemplateField HeaderText="STT">
                                                    <ItemTemplate>
                                                        <font class="fontblack">
                                                            <%# Container.DataItemIndex + 1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Tên bàn">
                                                    <ItemTemplate>
                                                        <font class="fontblack">
                                                            <asp:Label ID="lbTenBan" runat="server" Text='<%# Eval("Ten") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="120px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Số<br/> lượng">
                                                    <ItemTemplate>
                                                        <font class="fontblack">
                                                            <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("Soluong") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="30" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </font>
                        </td>
                    </tr>
                </table>
                <br />
                <table width="100%">
                    <tr>
                        <td align="center" class="borderRound">
                            <font class="fontred">Phiếu đặt món</font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font class="fontblack">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <br />
                                        <%if (Session["ChiTietPhieu"] != null)
                                          {%>
                                        Tổng tiền một bàn: 50.000 VND<br />
                                        <%} %>
                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowSorting="True">
                                            <Columns>
                                                <asp:TemplateField HeaderText="STT">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Tên món">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbTenMon" runat="server" Text='<%# Eval("MONAN.TenMonAn") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ControlStyle Width="120px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Số<br/> lượng">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbSoLuong2" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="tbSoLuong2" runat="server" Width="30" Style="text-align: center;"
                                                            ForeColor="Red" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ControlStyle Width="30" />
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Giá">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbGia" runat="server" Text='<%# Eval("MONAN.Gia", "{0:0,000}") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <%-- <asp:CommandField CancelText="Thoát" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True"
                                                                UpdateText="Sửa" HeaderText="Sửa" />
                                                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/remove.gif" DeleteText="Xóa"
                                                                ShowDeleteButton="True" HeaderText="Xóa" />--%>
                                            </Columns>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </font>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div class="modal hide" id="MessageForm">
        <div class="modal-header">
            <b><font class="fontblack">Đặt món thành công</font></b>
        </div>
        <div class="modal-body">
            <font class="fontblack">Cảm ơn <b>alice</b>.<br />
            Bạn đã đặt <b>5</b> món và <b>2</b> bàn cho ngày 26/05/2012 lúc 8:00.<br />
            Tổng số tiền phải trả là <b>2,000,000 VND</b>.<br />
            Nhân viên nhà hàng sẽ sớm gọi điện cho bạn để xác nhận việc đặt món.<br /></font>
            <a href="#">In phiếu đặt món</a>
        </div>
        <div class="modal-footer">
            <a class="btn btn-primary" style="text-decoration: none; color: White" href="Default.aspx?state=login&q=clearorder">
                Quay về trang chủ</a>
        </div>
    </div>
</asp:Content>
