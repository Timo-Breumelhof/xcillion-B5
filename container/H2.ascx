<%@ Control language="c#" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>

<div class="cont-wrapper  cont-h2">
	<header class="cont-header d-flex align-items-center">
		<dnn:ICON runat="server" CssClass="cont-header-icon d-inline-block me-2" id="dnnICON"  />
		<h2 class="cont-header-title">
			<dnn:TITLE runat="server" CssClass="cont-header-title" id="dnnTitle"  />
		</h2>
	</header>
	<section class="cont-content">
		<div id="ContentPane" runat="server" class="content-pane"></div>
	</section>
</div>