<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanh4.aspx.cs" Inherits="WARM.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<title>Sanh 4 - Tang 2&deg;</title>
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
    <td><a href="Sanh4.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/struct/slice_0_0.jpg"  style="width: 72px; height: 75px; border-width: 0px;"/></a></td>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/struct/slice_0_1.jpg"  style="width: 78px; height: 75px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/struct/slice_1_0.jpg"  style="width: 72px; height: 75px; border-width: 0px;"/></a></td>
    <td><a href="Sanh2.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/struct/slice_1_1.jpg"  style="width: 78px; height: 75px; border-width: 0px;"/></a></td>
</tr>

</table>
</div>

<div style="float:left; width:18%;">
<table cellpadding="0" border="0" cellspacing="0">
<tr>
    <td>
	<ul>
	<li><a href="Sanh1.aspx">1: Sanh 1</a></li>
	<li><a href="Sanh2.aspx">2: Sanh 2</a></li>
	<li><a href="Sanh3.aspx">3: Sanh 3</a></li>
	<li><a href="Sanh4.aspx">4: Sanh 4</a></li>
	</ul>
    </td>
</tr>
</table>
</div>

<div style="float:left; width:33%;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/navigate/slice_0_0.jpg"  style="width: 120px; height: 108px; border-width: 0px;"/></a></td>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/navigate/slice_0_1.jpg"  style="width: 106px; height: 108px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/navigate/slice_1_0.jpg"  style="width: 120px; height: 103px; border-width: 0px;"/></a></td>
    <td><a><img alt=" " src="../../../images/ThamQuan/Tang2/Sanh4/navigate/slice_1_1.jpg"  style="width: 106px; height: 103px; border-width: 0px;"/></a></td>
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
        <asp:MenuItem NavigateUrl="../../Tang2/Sanh4.aspx" Text="2D"/>
        <asp:MenuItem NavigateUrl="../Tang2/Sanh4.aspx" Text="3D"/>
    </Items>
</asp:Menu>
</div>
</div>

<div class="panorama round" style="width:600px;height:375px;padding:10px;background-color:#444;float:left;">
		<div class="panorama-view">
			<div class="panorama-container">
				<img src="../../../images/ThamQuan/3D/Tang2/Sanh4/1280.jpg" data-width="4217" data-height="375" alt="Panorama" usemap="testmap"/>
				<map id="testmap" name="testmap"> 
					<area shape="rect" coords="700,72,1000,255" href="Sanh2.aspx" alt="vers la salle de formation" /> 
					<area shape="rect" coords="500,114,800,210" href="Sanh3.aspx" alt="statues" />
                    <area shape="rect" coords="1000,114,1200,210" href="Sanh1.aspx" alt="statues" />
				</map>
			</div>
		</div>
		<a class="info round" href="http://commons.wikimedia.org/wiki/File:View_from_Sky_Tower_Akl.jpg">Sky Tower Akl</a>
	</div>
    </div>
</asp:Content>
