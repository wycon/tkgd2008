﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanh1.aspx.cs" Inherits="WARM.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../../Scripts/jquery.js"></script>
    <script type="text/javascript" src="../../../Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../../../Scripts/bootstrap.js"></script>
    <script type="text/javascript" src="../../../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../../Scripts/breadcrumbs.js"></script>

	<link rel="stylesheet" href="../../../Styles/panorama360.css" media="all" />
	<link rel="stylesheet" href="../../../Styles/panorama.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../../../Styles/jquery.fancybox-1.3.1.css" media="screen" />
	<script src="../../../Scripts/jquery.mousewheel.js" type="text/javascript"></script>
	<script src="../../../Scripts/jquery.panorama360.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(function () {
	        $('.panorama-view').panorama360({
	            bind_resize: false	// no need to subscribe to window resize event
	        });
	    });
	</script>
	<script type="text/javascript" src="../../../Scripts/cvi_text_lib.js"></script>
	<script type="text/javascript" src="../../../Scripts/jquery.advanced-panorama360.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $(".panorama-view").advancedpanorama();
	    });
	</script>
	<script type="text/javascript" src="../../../Scripts/jquery.flipv.js"></script>
	<script type="text/javascript" src="../../../Scripts/jquery.fancybox-1.3.1.pack.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $('.thickbox').fancybox();
	    });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<ul id="nav">
	<li><a href="../../..">Trang Chủ > </a></li>
	<li><a href="../../ChonTang.aspx" class="arrow">Tham Quan > </a>
		<ul>
			<li><a href="../../../DangKy.aspx" class="sub">Đăng Ký</a></li>
			<li><a href="../../../DatBan.aspx" class="sub">Đặt Bàn</a></li>
			<li><a href="../../../DatMon.aspx" class="sub">Đặt Món</a></li>
			<li><a href="../../../ChiTietMonAn.aspx" class="sub">Chi Tiết Món</a></li>
			<li><a href="../../../TimKiem.aspx" class="sub">Tìm Kiếm</a></li>
			<li><a href="../../../About.aspx" class="sub">About</a></li>
		</ul>
		<div class="clear"></div>
	</li>
	<li><a href="../Tang1/Sanh1.aspx" class="arrow">Tầng 1</a>
	<ul>
		<li><a href="../TangTret/Sanh1.aspx" class="sub">Tầng Trệt</a></li>
		<li><a href="../Tang2/Sanh1.aspx" class="sub">Tầng 2</a></li>
	</ul>
		<div class="clear"></div>
	</li>
	<li><a href="../Tang2/Sanh1.aspx" class="arrow">Sảnh 1</a>
	<ul>
		<li><a href="../Tang2/Sanh2.aspx" class="sub">Sảnh 2</a></li>
		<li><a href="../Tang2/Sanh3.aspx" class="sub">Sảnh 3</a></li>
		<li><a href="../Tang2/Sanh4.aspx" class="sub">Sảnh 4</a></li>
	</ul>
		<div class="clear"></div>
	</li>
	<li><a class="arrow current">3D</a>
	<ul>
		<li><a href="../../Tang2/Sanh1.aspx" class="sub">2D</a></li>
	</ul>
		<div class="clear"></div>
	</li>
</ul>

<div style="width:800px;">
<div class="panorama round" style="width:600px;height:375px;padding:10px;background-color:#444;float:left;">
		<div class="panorama-view">
			<div class="panorama-container">
				<img src="../../../images/ThamQuan/3D/Tang2/Sanh1/1280px-Panorama_Centrul_Vechi_2.jpg" data-width="1383" data-height="375" alt="Panorama" usemap="testmap"/>
				<map id="testmap" name="testmap"> 
					<area shape="arrow" coords="800,150,1000,255" href="Sanh2.aspx" alt="Sảnh 2" /> 
					<area shape="arrow" coords="500,100,700,210" href="Sanh3.aspx" alt="Sảnh 3" />
                    <area shape="arrow" coords="1000,114,1100,200" href="Sanh1.aspx" alt="Sảnh 1" />
				</map>
			</div>
		</div>
		<a class="info round" href="http://commons.wikimedia.org/wiki/File:View_from_Sky_Tower_Akl.jpg">Sky Tower Akl</a>
        <ul class="bjqs-controls"><li><a class="bjqs-next" href="#" style="top: 184px;">Tới</a></li><li><a class="bjqs-prev" href="#" style="top: 184px;">Lùi</a></li></ul>
	</div>

<div style="float:left;">
<asp:Label ID="lblNavigation" runat="server"  style="color:Black" Text="Kiến trúc tầng 2"></asp:Label>
<br clear="all"/>
<div style="float:left;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a href="Sanh4.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh1/struct/slice_0_0.jpg"  style="width: 72px; height: 75px; border-width: 0px;"/></a></td>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh1/struct/slice_0_1.jpg"  style="width: 78px; height: 75px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh1/struct/slice_1_0.jpg"  style="width: 72px; height: 75px; border-width: 0px;"/></a></td>
    <td><a href="Sanh2.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh1/struct/slice_1_1.jpg"  style="width: 78px; height: 75px; border-width: 0px;"/></a></td>
</tr>

</table>
<ul>

	<li><a style="color:Black" >1: Sảnh 1</a></li>
	<li><a href="Sanh2.aspx">2: Sảnh 2</a></li>
	<li><a href="Sanh3.aspx">3: Sảnh 3</a></li>
	<li><a href="Sanh4.aspx">3: Sảnh 4</a></li>
</ul>
<asp:Label ID="Label1" runat="server" style="color:Black"  Text="Chế độ xem"></asp:Label>
<ul>
	<li><a href="../../Tang2/Sanh1.aspx">2D</a></li>
	<li><a style="color:Black" >3D</a></li>
</ul>

</div>

</div>


</div>
</asp:Content>
