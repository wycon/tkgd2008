﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sanh3.aspx.cs" Inherits="WARM.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!--HTML SNIPPET GENERATED BY GIMP

WARNING!! This is NOT a fully valid HTML document, it is rather a piece of
HTML generated by GIMP's py-slice plugin that should be embedded in an HTML
or XHTML document to be valid.

Replace the href targets in the anchor (<a >) for your URLS to have it working
as a menu.
 -->
<div style="width:800px;">
<div style="width:70%; float:left;">
<asp:Label ID="lblNavigation" runat="server" Text="Định Hướng"></asp:Label>
<br clear="all"/>
<div style="float:left; width:27%;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a href="Sanh3.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/struct/slice_0_0.jpg"  style="width: 72px; height: 78px; border-width: 0px;"/></a></td>
    <td><a href="Sanh2.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/struct/slice_0_1.jpg"  style="width: 78px; height: 78px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/struct/slice_1_0.jpg"  style="width: 72px; height: 72px; border-width: 0px;"/></a></td>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/struct/slice_1_1.jpg"  style="width: 78px; height: 72px; border-width: 0px;"/></a></td>
</tr>

</table>
</div>

<div style="float:left; width:18%;">
<table cellpadding="0" border="0" cellspacing="0">
<tr>
    <td>
	<ul>
        <h4 style="color:Black; font-weight:bold; margin-right:20px"> TẦNG 1</h4>
	<li><a  style="text-decoration:none" href="Sanh1.aspx">1: Sảnh 1</a></li>
	<li><a  style="text-decoration:none" href="Sanh2.aspx">2: Sảnh 2</a></li>
	<li><a  style="text-decoration:none" href="Sanh3.aspx">3: Sảnh 3</a></li>
	</ul>
    </td>
</tr>
</table>
</div>

<div style="float:left; width:33%;">
<table cellpadding="0" border="0" cellspacing="0">
  <tr>
    <td><a><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/navigate/slice_0_0.jpg"  style="width: 120px; height: 108px; border-width: 0px;"/></a></td>
    <td><a href="Sanh2.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/navigate/slice_0_1.jpg"  style="width: 106px; height: 108px; border-width: 0px;"/></a></td>
</tr>

  <tr>
    <td><a href="Sanh1.aspx"><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/navigate/slice_1_0.jpg"  style="width: 120px; height: 103px; border-width: 0px;"/></a></td>
    <td><a><img alt=" " src="../../images/ThamQuan/Tang1/Sanh3/navigate/slice_1_1.jpg"  style="width: 106px; height: 103px; border-width: 0px;"/></a></td>
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
        <asp:MenuItem NavigateUrl="../Tang1/Sanh3.aspx" Text="2D"/>
        <asp:MenuItem NavigateUrl="../3D/Tang1/Sanh3.aspx" Text="3D"/>
    </Items>
</asp:Menu>
</div>
</div>

 <div id="container">
  
      <!--  Outer wrapper for presentation only, this can be anything you like -->
      <div id="banner">
        <!-- start Basic Jquery Slider -->
        <ul class="bjqs">
          <li><img src="../../images/ThamQuan/Tang1/Sanh3/img/banner01.jpg" title="Automatically generated caption"/></li>
          <li><img src="../../images/ThamQuan/Tang1/Sanh3/img/banner02.jpg" title="Automatically generated caption"/></li>
          <li><img src="../../images/ThamQuan/Tang1/Sanh3/img/banner03.jpg" title="Automatically generated caption"/></li>
        </ul>
        <!-- end Basic jQuery Slider -->
      </div>
      <!-- End outer wrapper -->
      
    </div>
  
    <!-- Load jQuery and the plug-in -->
    <script type="text/javascript" src="../../Scripts/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="../../Scripts/basic-jquery-slider.js"></script>
    
    <!--  Attach the plug-in to the slider parent element and adjust the settings as required -->
    <script type="text/javascript">
        $(document).ready(function () {

            $('#banner').bjqs({
                'animation': 'slide',
                'width': 582,
                'height': 385
            });

        });
    </script>
</div>

<!--
End of the part generated by GIMP
-->


</asp:Content>
