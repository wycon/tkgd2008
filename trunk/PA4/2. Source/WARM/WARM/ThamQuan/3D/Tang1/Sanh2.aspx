<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanh2.aspx.cs" Inherits="WARM.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<title>Sanh 2 - Tang 1&deg;</title>
	<meta name="description" content="Creative design agency that tries to make the complex feel simple." />
	<link rel="stylesheet" href="../../../Styles/panorama360.css" media="all" />
	<link rel="stylesheet" href="../../../Styles/panorama.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../../../Styles/jquery.fancybox-1.3.1.css" media="screen" />
	<script src="../../../Scripts/jquery-1.6.2.min.js" type="text/javascript"></script>
	<script src="../../../Scripts/jquery.mousewheel.min.js" type="text/javascript"></script>
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
<div style="width:800px;">
<div style="width:70%; float:left;">
<asp:Label ID="lblNavigation" runat="server" Text="Định Hướng"></asp:Label>
<br clear="all"/>
<div style="float:left; width:27%;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/struct/slice_0_0.jpg"  style="width: 72px; height: 78px; border-width: 0px;"/></a></td>
    <td><a href="Sanh2.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/struct/slice_0_1.jpg"  style="width: 78px; height: 78px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/struct/slice_1_0.jpg"  style="width: 72px; height: 72px; border-width: 0px;"/></a></td>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/struct/slice_1_1.jpg"  style="width: 78px; height: 72px; border-width: 0px;"/></a></td>
</tr>

</table>
</div>

<div style="float:left; width:25%;">
<table cellpadding="0" border="0" cellspacing="0">
<tr>
    <td>
	<ul>
    <h4 style="color:Black; font-weight:bold; margin-right:20px"> TẦNG 1</h4>
    <li><a style="text-decoration:none" href="Sanh1.aspx">2: Sảnh 2</a></li>
	<li style="color:Black">2: Sảnh 2</li>
	<li><a style="text-decoration:none" href="Sanh3.aspx">3: Sảnh 3</a></li>
	</ul>
    </td>
</tr>
</table>
</div>

<div style="float:left; width:33%;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/navigate/slice_0_0.jpg"  style="width: 108px; height: 94px; border-width: 0px;"/></a></td>
    <td><a><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/navigate/slice_0_1.jpg"  style="width: 117px; height: 94px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/navigate/slice_1_0.jpg"  style="width: 108px; height: 112px; border-width: 0px;"/></a></td>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../../images/ThamQuan/Tang1/Sanh2/navigate/slice_1_1.jpg"  style="width: 117px; height: 112px; border-width: 0px;"/></a></td>
</tr>

</table>
</div>

</div>
<div style="width:30%; float:left;">
<asp:Label ID="lblOption" runat="server" Text="Tùy Chọn"></asp:Label>
<br clear="all"/>
<div style="float:left;">
<asp:Menu ID="mnuTang" runat="server" CssClass="menu" EnableViewState="false" 
        IncludeStyleBlock="false">
    <Items>
        <asp:MenuItem NavigateUrl="../Tang2/Sanh1.aspx" Text="Tầng 2"/>
        <asp:MenuItem NavigateUrl="../Tang1/Sanh1.aspx" Text="Tầng 1"/>
        <asp:MenuItem NavigateUrl="../TangTret/Sanh1.aspx" Text="Tầng Trệt"/>
    </Items>
</asp:Menu>
</div>
<div style="float:left;">
<asp:Menu ID="mnuCheDo" runat="server" CssClass="menu" EnableViewState="false" 
        IncludeStyleBlock="false">
    <Items>
        <asp:MenuItem NavigateUrl="../../Tang1/Sanh2.aspx" Text="2D"/>
        <asp:MenuItem NavigateUrl="../Tang1/Sanh2.aspx" Text="3D"/>
    </Items>
</asp:Menu>
</div>
</div>

<div class="panorama round" style="width:600px;height:375px;padding:10px;background-color:#444;float:left;">
		<div class="panorama-view">
			<div class="panorama-container">
				<img src="../../../images/ThamQuan/3D/Tang1/Sanh2/envImg.jpg" data-width="899" data-height="375" alt="Panorama" usemap="testmap"/>
				<map id="testmap" name="testmap"> 
					<area shape="rect" coords="400,72,600,255" href="Sanh1.aspx" alt="vers la salle de formation" /> 
					<area shape="rect" coords="100,114,300,210" href="Sanh3.aspx" alt="statues" /> 
				</map>
			</div>
		</div>
		<a class="info round" href="http://commons.wikimedia.org/wiki/File:View_from_Sky_Tower_Akl.jpg">Sky Tower Akl</a>
	</div>
    </div>
</asp:Content>
