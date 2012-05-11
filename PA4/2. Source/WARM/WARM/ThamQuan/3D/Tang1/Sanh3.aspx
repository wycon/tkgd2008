<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanh3.aspx.cs" Inherits="WARM.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<title>Sanh 3 - Tang 1&deg;</title>
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
<div class="panorama round" style="width:600px;height:375px;padding:10px;background-color:#444;">
		<div class="panorama-view">
			<div class="panorama-container">
				<img src="../../../images/ThamQuan/3D/Tang1/Sanh3/Hanoi_skyline_panorama_1.jpg" data-width="1704" data-height="375" alt="Panorama" usemap="testmap"/>
				<map id="testmap" name="testmap"> 
					<area shape="rect" coords="700,72,1000,255" href="Sanh2.aspx" alt="vers la salle de formation" /> 
					<area shape="rect" coords="500,114,800,210" href="Sanh1.aspx" alt="statues" /> 
				</map>
			</div>
		</div>
		<a class="info round" href="http://commons.wikimedia.org/wiki/File:View_from_Sky_Tower_Akl.jpg">Sky Tower Akl</a>
	</div>
</asp:Content>
