<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />


<div id="siteWrapper">


    <div id="topHeader">
        <div class="container">
            <div class="row">
                <div class="col-md-12 d-flex flex-wrap">
                    <div class="language">
                        <dnn:LANGUAGE runat="server" ID="LANGUAGE1" ShowMenu="False" ShowLinks="True" />
                    </div>
                    <div id="login" class="login-wrap flex-grow-1">
                        <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
                    </div>
                    <div class="search">
                        <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                    </div>
                    <a id="search-action" class="d-none search-icon" aria-label="Search">Search</a>
                </div>
            </div>
        </div>
    </div>

    <!--Header -->
    <header role="banner">
        <div class="container px-0 px-md-3">
            <div class="navbar navbar-expand-md" role="navigation">
                <div id="navbar-top-wrapper" class="ps-3 ps-md-0    ">
                    <div class="logo">
                        
                            <dnn:LOGO runat="server" class="logo-link" ID="dnnLOGO" />

                    </div>
                </div>
                <div class="nav-toggle-wrap pe-3">
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
                    <span class="visually-hidden">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <dnn:MENU ID="MENU" MenuStyle="menus/mainmenu" runat="server" NodeSelector="*"></dnn:MENU>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">
        <main role="main">
            <div class="row dnnpane">
                <div id="HeaderPane" class="col-md-12 headerPane" runat="server"></div>
            </div>
            <div id="breadcrumb" class="skin-breadcrumb col-md-12">
                <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;img src=&quot;/Portals/_default/Skins/Xcillion/Images/breadcrumb-arrow.png&quot; alt=&quot;breadcrumb separator&quot;&gt;" HideWithNoBreadCrumb="true" />
            </div>
            <div id="mainContent-inner">
                <div class="row dnnpane">
                    <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P1_75_1" class="col-md-8 leftPane spacingTop" runat="server"></div>
                    <div id="P1_25_2" class="col-md-4 rightPane spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P2_25_1" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P2_75_2" class="col-md-8 spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P3_33_1" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P3_33_2" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P3_33_3" class="col-md-4 spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="ContentPaneLower" class="col-md-12 contentPane spacingTop" runat="server"></div>
                </div>
            </div>
        </main>
       
    </div>

    <footer role="contentinfo">
        <div class="footer-above">
            <div class="container">
                <div class="row dnnpane">
                    <div id="footer_25_1" class="footer-col col-md-3 col-sm-6" runat="server"></div>
                    <div id="footer_25_2" class="footer-col col-md-3 col-sm-6" runat="server"></div>
                    <div class="clearfix d-none d-sm-block d-md-none"></div>
                    <div id="footer_25_3" class="footer-col col-md-3 col-sm-6" runat="server"></div>
                    <div id="footer_25_4" class="footer-col col-md-3 col-sm-6" runat="server"></div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row dnnpane">
                    <div class="col-md-12">
                        <div class="copyright">
                            <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="" />
                        </div>
                        <div class="terms-priv">
                            <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
                            <dnn:TERMS ID="dnnTerms" runat="server" />
                            |
					        <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div>


<%-- CSS & JS includes --%>
<!--#include file="Common/AddFiles.ascx"-->
