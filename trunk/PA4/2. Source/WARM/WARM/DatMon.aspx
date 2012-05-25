<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DatMon.aspx.cs" Inherits="WARM.DatMon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>
    <link type="text/css" rel="stylesheet" href="../Styles/MyStyle.css" />
    <link type="text/css" rel="stylesheet" href="../Styles/jquery.rating.css" />
    <script type="text/javascript" src="../Scripts/MyScript.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.rating.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td colspan="3">
                <%--<ul class="breadcrumb">
                    <li><a href="Default.aspx">Trang chủ</a> <span class="divider">&gt;</span> </li>
                    <li><a href="DatMon.aspx">Đặt món</a> <span class="divider">&gt;</span> </li>
                    <li class="active"><span style="margin-top: -5px; display: inline-block;" class="label label-important">
                        Món mặn</span></li>
                </ul>--%>
                <ul id="nav">
                    <li><a href="../Default.aspx">Trang Chủ > </a></li>
                    <li><a class="arrow current">Món nướng</a>
                        <ul>
                            <li><a href="../DangKy.aspx" class="sub">Đăng ký</a></li>                            
                            <li><a href="../DatBan.aspx" class="sub">Đặt bàn</a></li>
                            <li><a href="../ThamQuan/ChonTang.aspx" class="sub">Tham quan</a></li>
                            <li><a href="../TimKiemNangCao.aspx" class="sub">Tìm nâng cao</a></li>
                            <li><a href="../About.aspx" class="sub">Giới thiệu</a></li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 5px;" colspan="2" width="100%">
                <table>
                    <tr>
                        <td style="padding-right: 25px;">
                            <font class="fontblack">Sắp theo tên:
                                <asp:HyperLink ID="hpAName" runat="server" NavigateUrl="DatMon.aspx?s=aname">A-Z</asp:HyperLink>
                                /
                                <asp:HyperLink ID="hpDName" runat="server" NavigateUrl="DatMon.aspx?s=dname">Z-A</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp; Sắp theo giá:
                                <asp:HyperLink ID="hpAPrice" runat="server" NavigateUrl="DatMon.aspx?s=aprice">tăng</asp:HyperLink>
                                /
                                <asp:HyperLink ID="hpDPrice" runat="server" NavigateUrl="DatMon.aspx?s=dprice">giảm</asp:HyperLink></font>
                        </td>
                        <td style="padding-right: 35px;">
                            <font class="fontblack">Số lượng hiển thị:</font>
                            <asp:DropDownList ID="ddlSoKetQua" runat="server" OnSelectedIndexChanged="ddlSoKetQua_SelectedIndexChanged"
                                AutoPostBack="True" Width="40px">
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td align="right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Đầu</a></li>
                                    <li class="active"><a href="#">1</a> </li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">...</a></li>
                                    <li><a href="#">10</a></li>
                                    <li><a href="#">Cuối</a></li>
                                </ul>
                            </div>
                        </td>
                        
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 5px;">
                <asp:Repeater ID="rptPages" runat="server" OnItemCommand="rptPages_ItemCommand">
                    <HeaderTemplate>
                        <%--<table cellpadding="0" cellspacing="0" border="0">
                            <tr class="text">
                                <td>
                                    <b>Trang:</b>&nbsp;
                                </td>
                                <td>--%>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="btnPage" CommandName="Page" CommandArgument="<%#
                         Container.DataItem %>" CssClass="text" runat="server"><%# Container.DataItem %>
                        </asp:LinkButton>&nbsp;--%>
                    </ItemTemplate>
                    <FooterTemplate>
                        <%--</td> </tr> </table>--%>
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
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td class="borderRound">
                                                <table>
                                                    <tr>
                                                        <td style="padding-right: 10px;">
                                                            <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                                        </td>
                                                        <td valign="top" width="50%">
                                                            <a href="ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>">
                                                                <%# Eval("TenMonAn") %></a><br />
                                                            <font class="fontblack">Giá:
                                                                <%# Eval("Gia", "{0:0,000}")%>
                                                                VND</font><br />
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
                                                        </td>
                                                        <td valign="top" width="30%">
                                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                <ContentTemplate>
                                                                    <font class="fontblack">Số lượng món/bàn:</font>&nbsp;&nbsp;&nbsp;
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ButtonGiam_Click" ImageUrl="~/images/ArrowDown.png"
                                                                        AlternateText="v" Width="16px" Height="16px" />
                                                                    <asp:TextBox ID="tbSoLuong" runat="server" Width="20px" Text="1"></asp:TextBox>
                                                                    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ButtonTang_Click" ImageUrl="~/images/ArrowUp.png"
                                                                        AlternateText="^" Width="16px" Height="16px" />
                                                                    <br />
                                                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Đặt món"
                                                                        OnClick="Button1_Click" />
                                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# "" + Eval("MaMonAn") %>' />
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
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
                        <td valign="top">
                            <table width="100%" height="100%">
                                <tr>
                                    <td align="center" class="borderRound">
                                        <font class="fontred">Phiếu đặt món</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <%--<asp:HyperLink ID="hpHoanTatDatMon" runat="server" NavigateUrl="DatBan.aspx">Hoàn tất đặt món</asp:HyperLink>--%>
                                                <asp:Button ID="hpHoanTatDatMon" runat="server" Text="Hoàn tất đặt món" CssClass="btn btn-success"
                                                    OnClick="DatBan_Click" />
                                                <br />
                                                <font class="fontblack">Tổng tiền một bàn:
                                                    <asp:Label ID="TongTien" runat="server" Text="0,000"></asp:Label>
                                                    VND</font><br />
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                                                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                                    OnRowDeleting="GridView1_RowDeleting" CssClass="borderRound">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="STT">
                                                            <ItemTemplate>
                                                                <font class="fontblack">
                                                                    <%# Container.DataItemIndex + 1 %></font>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Tên món">
                                                            <ItemTemplate>
                                                                <font class="fontblack">
                                                                    <asp:Label ID="lbTenMon" runat="server" Text='<%# Eval("MONAN.TenMonAn") %>'></asp:Label></font>
                                                            </ItemTemplate>
                                                            <ControlStyle Width="120px" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Số<br/> lượng">
                                                            <ItemTemplate>
                                                                <font class="fontblack">
                                                                    <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label></font>
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="tbSoLuong" runat="server" Width="30" Style="text-align: center;"
                                                                    ForeColor="Red" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ControlStyle Width="30" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Giá">
                                                            <ItemTemplate>
                                                                <font class="fontblack">
                                                                    <asp:Label ID="lbGia" runat="server" Text='<%# Eval("MONAN.Gia", "{0:0,000}") %>'></asp:Label></font>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:CommandField CancelText="Thoát" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True"
                                                            UpdateText="Lưu" HeaderText="Sửa" />
                                                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/remove.gif" DeleteText="Xóa"
                                                            ShowDeleteButton="True" HeaderText="Xóa" />
                                                    </Columns>
                                                </asp:GridView>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <div class="pagination" style="float: right">
                    <ul>
                        <li><a href="#">Đầu</a></li>
                        <li class="active"><a href="#">1</a> </li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">...</a></li>
                        <li><a href="#">10</a></li>
                        <li><a href="#">Cuối</a></li>
                    </ul>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
