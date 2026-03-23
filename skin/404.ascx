<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<div id="siteWrapper">

    <!-- UserControlPanel  -->
    <div id="topHeader">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div id="search-top" class="small-screens d-sm-none">
                        <dnn:SEARCH ID="dnnSearch2" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="language">
                        <dnn:LANGUAGE runat="server" id="LANGUAGE1" showMenu="False" showLinks="True" />
                    </div>
                    <div class="search d-none d-sm-block">
                        <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                    </div>
                    <%-- search action for Search function on small devices --%>
                    <a id="search-action" aria-label="Search"></a>
                </div>
            </div>
        </div>
    </div>

    <!--Header -->
    <header role="banner">
        <div id="mainHeader-inner" class="container">
            <div class="navbar navbar-expand-md" role="navigation">
                <div id="navbar-top-wrapper">
                    <div id="logo">
                        <span class="brand">
                            <dnn:LOGO runat="server" ID="dnnLOGO" />
                        </span>
                    </div>
                </div>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
                    <span class="visually-hidden">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div id="navbar" class="collapse navbar-collapse">
                    <dnn:MENU ID="MENU" MenuStyle="Menus/MainMenu" runat="server" NodeSelector="*"></dnn:MENU>
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
            <div id="breadcrumb" class="col-md-12">
                <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" CssClass="breadcrumbLink" RootLevel="0" Separator="&lt;img src=&quot;/Portals/_default/Skins/Xcillion/Images/breadcrumb-arrow.png&quot;&gt;" HideWithNoBreadCrumb="true" />
            </div>
            <div id="mainContent-inner">
                <div class="row dnnpane">
                    <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                </div>
            </div><!-- /.mainContent-inner -->
        </main><!-- /.mainContent -->
    </div><!-- /.container -->

    <!-- Footer -->
    <footer role="contentinfo">
        <%-- No footer panes for the 404 skin --%>
        <div class="footer-below">
            <div class="container">
                <div class="row dnnpane">
                    <div class="col-md-12">
                        <div class="copyright">
                            <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="" />
                        </div>
                        <div class="terms-priv">
                            <dnn:LINKTOMOBILE ID="dnnLinkToMobile" runat="server" />
					        <dnn:TERMS ID="dnnTerms" runat="server" /> |
					        <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</div><!-- /.SiteWrapper -->

<%-- CSS & JS includes --%>
<!--#include file="Common/AddFiles.ascx"-->
