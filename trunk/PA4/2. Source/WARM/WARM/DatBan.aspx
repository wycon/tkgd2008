<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DatBan.aspx.cs" Inherits="WARM.DatBan" EnableEventValidation="false" %>

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
    <link type="text/css" rel="stylesheet" href="../Styles/jquery-ui-1.8.20.custom.css" />
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
                        Đặt bàn</span></li>
                </ul>--%>
                <ul id="nav">
                    <li><a href="../Default.aspx">Trang Chủ > </a></li>
                    <li><a href="../DatMon.aspx">Đặt món > </a></li>
                    <li><a class="arrow current">Đặt bàn</a>
                        <ul>
                            <li><a href="../DangKy.aspx" class="sub">Đăng ký</a></li>                          
                            <li><a href="../ThamQuan/ChonTang.aspx" class="sub">Tham quan</a></li>
                            <li><a href="../TimKiemNangCao.aspx" class="sub">Tìm nâng cao</a></li>
                            <li><a href="../About.aspx" class="sub">Giới thiệu</a></li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
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
                                <asp:Repeater ID="rptItems" runat="server">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <td class="borderRound">
                                            <table>
                                                <tr>
                                                    <td style="padding-right: 10px">
                                                        <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                                    </td>
                                                    <td valign="top" width="40%">
                                                        <font class="fontblack"><a>
                                                            <%# Eval("Ten") %></a><br />
                                                            <%# Eval("MoTa") %>
                                                            <div>
                                                            </div>
                                                    </td>
                                                    <td valign="top" width="50%">
                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                            <ContentTemplate>
                                                                <font class="fontblack">Số lượng bàn:</font>&nbsp;&nbsp;&nbsp;
                                                                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ButtonGiam_Click" ImageUrl="~/images/ArrowDown.png"
                                                                    AlternateText="v" Width="16px" Height="16px" />
                                                                <asp:TextBox ID="tbSoLuong" runat="server" Width="20px" Text="1"></asp:TextBox>
                                                                <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ButtonTang_Click" ImageUrl="~/images/ArrowUp.png"
                                                                    AlternateText="^" Width="16px" Height="16px" />
                                                                <br />
                                                                <asp:Button ID="Button1" runat="server" Text="Đặt bàn" CssClass="btn btn-primary"
                                                                    OnClick="DatBanClick" />
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# "" + Eval("Ten") %>' />
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    </td>
                                            </table>
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
                            <table width="100%" <%--class="borderRound"--%>>
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
                                                    <asp:Button ID="hpHoanTatDatBan" runat="server" Text="Hoàn tất đặt bàn" CssClass="btn btn-success"
                                                        OnClick="HoanTat_Click" />
                                                    <br />
                                                    Tổng tiền:
                                                    <asp:Label ID="TongTien" runat="server" Text="0,000"></asp:Label>
                                                    VND<br />
                                                    Thời gian đặt bàn:<br />
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <font class="fontblack">
                                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                                        <asp:ListItem>8</asp:ListItem>
                                                                        <asp:ListItem>9</asp:ListItem>
                                                                        <asp:ListItem>10</asp:ListItem>
                                                                        <asp:ListItem>11</asp:ListItem>
                                                                        <asp:ListItem>12</asp:ListItem>
                                                                        <asp:ListItem>13</asp:ListItem>
                                                                        <asp:ListItem>14</asp:ListItem>
                                                                        <asp:ListItem>15</asp:ListItem>
                                                                        <asp:ListItem>16</asp:ListItem>
                                                                        <asp:ListItem>17</asp:ListItem>
                                                                        <asp:ListItem>18</asp:ListItem>
                                                                        <asp:ListItem>19</asp:ListItem>
                                                                        <asp:ListItem>20</asp:ListItem>
                                                                        <asp:ListItem>21</asp:ListItem>
                                                                    </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                <font class="fontblack">Giờ
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                                    <asp:ListItem>00</asp:ListItem>
                                                                    <asp:ListItem>15</asp:ListItem>
                                                                    <asp:ListItem>30</asp:ListItem>
                                                                    <asp:ListItem>45</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                <font class="fontblack">Phút
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td>
                                                            </td>
                                                            <td>
                                                            
                                                            <input id="id_01" class="datepicker" type="text" style="width:100px; display:inline-block;" value="26/05/2012">&nbsp;&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                                                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                                        OnRowDeleting="GridView1_RowDeleting">
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
                                                                <EditItemTemplate>
                                                                    <asp:TextBox ID="tbSoLuong" runat="server" Width="30" Style="text-align: center;"
                                                                        ForeColor="Red" Text='<%# Eval("Soluong") %>'></asp:TextBox>
                                                                </EditItemTemplate>
                                                                <ControlStyle Width="30" />
                                                                <ItemStyle HorizontalAlign="Center" />
                                                            </asp:TemplateField>
                                                            <asp:CommandField CancelText="Thoát" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True"
                                                                UpdateText="Sửa" HeaderText="Sửa" />
                                                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/remove.gif" DeleteText="Xóa"
                                                                ShowDeleteButton="True" HeaderText="Xóa" />
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
                                <table width="100%" <%--class="borderRound"--%>>
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
                                                    Tổng tiền một bàn:
                                                    <asp:Label ID="Label1" runat="server" Text="0,000"></asp:Label>
                                                    VND<br />
                                                    <br />
                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                                                        OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" OnRowCancelingEdit="GridView2_RowCancelingEdit"
                                                        OnRowDeleting="GridView2_RowDeleting">
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
                                                            <asp:CommandField CancelText="Thoát" DeleteText="Xóa" EditText="Sửa" ShowEditButton="True"
                                                                UpdateText="Sửa" HeaderText="Sửa" />
                                                            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/remove.gif" DeleteText="Xóa"
                                                                ShowDeleteButton="True" HeaderText="Xóa" />
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
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
