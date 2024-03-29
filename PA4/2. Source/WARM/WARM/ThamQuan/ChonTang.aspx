﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ChonTang.aspx.cs" Inherits="WARM.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../Scripts/breadcrumbs.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul id="nav">
        <li><a href="../Default.aspx">Trang chủ > </a></li>
        <li><a href="#" class="arrow">Tham quan > </a>
            <ul>
                <li><a href="../DangKy.aspx" class="sub">Đăng ký</a></li>
                <li><a href="../DatMon.aspx" class="sub">Đặt món</a></li>
                <li><a href="../DatBan.aspx" class="sub">Đặt bàn</a></li>
                <li><a href="../TimKiemNangCao.aspx" class="sub">Tìm nâng cao</a></li>
                <li><a href="../About.aspx" class="sub">Giới thiệu</a></li>
            </ul>
            <div class="clear">
            </div>
        </li>
        <li><a class="arrow current">Chọn Tầng</a>
            <ul>
                <li><a href="TangTret/Sanh1.aspx" class="sub">Tầng Trệt</a></li>
                <li><a href="Tang1/Sanh1.aspx" class="sub">Tầng 1</a></li>
                <li><a href="Tang2/Sanh1.aspx" class="sub">Tầng 2</a></li>
            </ul>
            <div class="clear">
            </div>
        </li>
    </ul>
    <!--HTML SNIPPET GENERATED BY GIMP

WARNING!! This is NOT a fully valid HTML document, it is rather a piece of
HTML generated by GIMP's py-slice plugin that should be embedded in an HTML
or XHTML document to be valid.

Replace the href targets in the anchor (<a >) for your URLS to have it working
as a menu.
    -->
    <div style="width: 70%; float: left;">
        <table cellpadding="0" border="0" cellspacing="0">
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_0_0.jpg); height: 150px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_0_1.jpg); height: 150px;
                    width: 267px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_0_2.jpg); height: 150px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_1_0.jpg); height: 60px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_1_1-new.jpg);
                    height: 60px; width: 267px;" onmouseover="exchange(this,1);"
                    onmouseout="exchange(this,0);" onclick="exchange(this,2);"
                    id="1_1">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_1_2.jpg); height: 60px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_2_0.jpg); height: 29px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_2_1.jpg); height: 29px;
                    width: 267px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_2_2.jpg); height: 29px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_3_0.jpg); height: 56px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_3_1-new.jpg);
                    height: 56px; width: 267px;" onmouseover="exchange(this,1);"
                    onmouseout="exchange(this,0);"  onclick="exchange(this,2);"
                    id="3_1">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_3_2.jpg); height: 56px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_4_0.jpg); height: 27px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_4_1.jpg); height: 27px;
                    width: 267px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_4_2.jpg); height: 27px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_5_0.jpg); height: 72px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_5_1.jpg);
                    height: 72px; width: 267px;" onmouseover="exchange(this,1);"
                    onmouseout="exchange(this,0);"  onclick="exchange(this,2);"
                    id="5_1">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_5_2.jpg); height: 72px;
                    width: 129px;">
                </td>
            </tr>
            <tr>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_6_0.jpg); height: 57px;
                    width: 204px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_6_1.jpg); height: 57px;
                    width: 267px;">
                </td>
                <td style="background-image: url(../images/ThamQuan/ChonTang/slice_6_2.jpg); height: 57px;
                    width: 129px;">
                </td>
            </tr>
        </table>
        <div class="popupMenu" id="5_1_PopupMenu" style="position: absolute; visibility: hidden;
            left: 827px; top: 508px; z-index: 1000;">
            <div style="border: 1px outset white; padding: 2px;">
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_0_0_menu.png);
                    height: 42px; width: 124px;">
                    <a href="TangTret/Sanh1.aspx">
                    </a>
                </div>
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_1_0_menu.png);
                    width: 124px; height: 44px;">
                    <a href="3D/TangTret/Sanh1.aspx">
                    </a>
                </div>
            </div>
        </div>
        <div class="popupMenu" id="3_1_PopupMenu" style="position: absolute; visibility: hidden;
            left: 828px; top: 415px; z-index: 1000;">
            <div style="border: 1px outset white; padding: 2px;">
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_0_0_menu.png);
                    height: 42px; width: 124px;">
                    <a href="Tang1/Sanh1.aspx">
                    </a>
                </div>
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_1_0_menu.png);
                    width: 124px; height: 44px;">
                    <a href="3D/Tang1/Sanh1.aspx">
                    </a>
                </div>
            </div>
        </div>
        <div class="popupMenu" id="1_1_PopupMenu" style="position: absolute; visibility: hidden;
            left: 823px; top: 326px; z-index: 1000;">
            <div style="border: 1px outset white; padding: 2px;">
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_0_0_menu.png);
                    height: 42px; width: 124px;">
                    <a href="Tang2/Sanh1.aspx">
                    </a>
                </div>
                
                <div style="background-image: url(../images/ThamQuan/ChonTang/slice_1_0_menu.png);
                    width: 124px; height: 44px;">
                    <a href="3D/Tang2/Sanh1.aspx">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div style="float: left; padding-left: 20px;">
        <div id="title">
        </div>
        <br clear="all" />
        <table cellpadding="0" border="0" cellspacing="0">
            <tr>
                <td id="struct_image" style="background-image: url(../images/ThamQuan/ChonTang/struct.jpg);
                    width: 100px; height: 100px;">
                </td>
            </tr>
            <tr>
                <td>
                    <ul id="explain">
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    <script language="javascript" type="text/javascript">
    /* Made with GIMP */

    /* Preload images: */
    images = new Array();

    images["1_1_plain"] = "url(../images/ThamQuan/ChonTang/slice_1_1-new.jpg)";
    images["3_1_plain"] = "url(../images/ThamQuan/ChonTang/slice_3_1-new.jpg)";
    images["5_1_plain"] = "url(../images/ThamQuan/ChonTang/slice_5_1.jpg)";

    images["1_1_hover"] = "url(../images/ThamQuan/ChonTang/slice_1_1_hover.jpg)";

    images["3_1_hover"] = "url(../images/ThamQuan/ChonTang/slice_3_1_hover.jpg)";

    images["5_1_hover"] = "url(../images/ThamQuan/ChonTang/slice_5_1_hover.jpg)";

    images["1_1_struct"] = "url(../images/ThamQuan/ChonTang/1_1_struct.jpg)";
    images["3_1_struct"] = "url(../images/ThamQuan/ChonTang/3_1_struct.jpg)";
    images["5_1_struct"] = "url(../images/ThamQuan/ChonTang/5_1_struct.jpg)";

    explains = new Array();

    explains["1_1"] =
	"<li><a style='Color:Black'>1: Sảnh 1</a></li>\
	<li><a style='Color:Black'>2: Sảnh 2</a></li>\
	<li><a style='Color:Black'>3: Sảnh 3</a></li>\
	<li><a style='Color:Black'>4: Sảnh 4</a></li>";
    explains["3_1"] =
	"<li><a style='Color:Black'>1: Sảnh 1</a></li>\
	<li><a style='Color:Black'>2: Sảnh 2</a></li>\
	<li><a style='Color:Black'>3: Sảnh 3</a></li>";
    explains["5_1"] =
	"<li><a style='Color:Black'>1: Sảnh 1</a></li>\
	<li><a style='Color:Black'>2: Sảnh 2</a></li>";
    explains["empty"] =
	"";

    titles = new Array();

    titles["1_1"] = "<a style='Color:Black'>Kiến trúc tầng 2</a>";
    titles["3_1"] = "<a style='Color:Black'>Kiến trúc tầng 1</a>";
    titles["5_1"] = "<a style='Color:Black'>Kiến trúc tầng trệt</a>";
    titles["empty"] =
	"";

    locations = new Array();

    locations["1_1"] = "Tang2/Sanh1.aspx";
    locations["3_1"] = "Tang1/Sanh1.aspx";
    locations["5_1"] = "TangTret/Sanh1.aspx";
    locations["empty"] =
	"";

    function init() {
        document.getElementById("struct_image").style.backgroundImage = images["5_1" + "_struct"];
        document.getElementById("explain").innerHTML = explains["5_1"];
        document.getElementById("title").innerHTML = titles["5_1"];
    }

    $(document).ready(function () {

        init();

    });

    function exchange(image, event) {
        name = image.id;

        switch (event) {
            case 0:
                image.style.backgroundImage = images[name + "_plain"];
                //document.getElementById("struct_image").style.backgroundImage = "url(../images/ThamQuan/ChonTang/struct.jpg)";
                //document.getElementById("explain").innerHTML = explains["empty"];
                //$("#"+name+"_PopupMenu").css("visibility", "hidden"); 
                break;
            case 1:
                image.style.backgroundImage = images[name + "_hover"];
                document.getElementById("struct_image").style.backgroundImage = images[name + "_struct"];
                document.getElementById("explain").innerHTML = explains[name];
                document.getElementById("title").innerHTML = titles[name];
                image.style.cursor = "pointer";
                break;
            case 2:
                //if ($("#" + name + "_PopupMenu").css("visibility") == "hidden")
                //    $("#" + name + "_PopupMenu").css("visibility", "visible");
                //else
                //    $("#" + name + "_PopupMenu").css("visibility", "hidden");
                window.location = locations[name];
                break;
            case 3:
                image.style.backgroundImage = images[name + "_hover"];
                break;
        }

    }
    </script>
    <!--
End of the part generated by GIMP
-->
</asp:Content>
