<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DatMon.aspx.cs" Inherits="WARM.DatMon" %>

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
                Sắp theo tên: <a href="DatMon.aspx?s=aname">tăng</a> / <a href="DatMon.aspx?s=dname">
                    giảm</a>&nbsp;&nbsp;&nbsp; Sắp theo giá: <a href="DatMon.aspx?s=aprice">tăng</a>
                / <a href="DatMon.aspx?s=dprice">giảm</a>
            </td>
            <td>
                <b>Số lượng hiển thị:</b>
                <asp:DropDownList ID="ddlSoKetQua" runat="server" OnSelectedIndexChanged="ddlSoKetQua_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="rptPages" runat="server" OnItemCommand="rptPages_ItemCommand">
                    <HeaderTemplate>
                        <table cellpadding="0" cellspacing="0" border="0">
                            <tr class="text">
                                <td>
                                    <b>Trang:</b>&nbsp;
                                </td>
                                <td>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage" CommandName="Page" CommandArgument="<%#
                         Container.DataItem %>" CssClass="text" runat="server"><%# Container.DataItem %>
                        </asp:LinkButton>&nbsp;
                    </ItemTemplate>
                    <FooterTemplate>
                        </td> </tr> </table>
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
                                            <td colspan="3">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="padding-right: 10px">
                                                <img alt="" src='<%# Eval("Anh") %>' width='120' height='100' />
                                            </td>
                                            <td valign="top" width="50%">
                                                <a href="ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>">
                                                    <%# Eval("TenMonAn") %></a><br />
                                                Giá:
                                                <%# Eval("Gia", "{0:0,000}")%>
                                                VND<br />
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
                                                <%--<input id="bt1" type="button" value="Đặt món" onclick="DatMon('<%# Eval("MaMonAn")%>', '<%# Eval("TenMonAn")%>', '<%# Eval("Gia")%>')" />--%>
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        Số lượng món/bàn:&nbsp;&nbsp;&nbsp;
                                                        <asp:TextBox ID="tbSoLuong" runat="server" Width="20px" Text="1"></asp:TextBox>
                                                        <%--<input id="sl0<%# Eval("MaMonAn")%>" type="text" value="1" size="3" />--%>
                                                        <br />
                                                        <asp:Button ID="Button1" runat="server" Text="Đặt món" OnClick="Button1_Click" />
                                                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# "" + Eval("MaMonAn") %>'/>                                                        
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
                                        <font class="fontred">Phiếu đặt món</font>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:HyperLink ID="hpHoanTatDatMon" runat="server" NavigateUrl="DatBan.aspx">Hoàn tất đặt món</asp:HyperLink><br />
                                                Tổng tiền một bàn: <asp:Label ID="TongTien" runat="server" Text="0,000"></asp:Label> VND<br />
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                                                    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                                    OnRowDeleting="GridView1_RowDeleting">
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
                                                                <asp:Label ID="lbSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="tbSoLuong" runat="server" Width="30" style="text-align:center;" ForeColor="Red" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
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
