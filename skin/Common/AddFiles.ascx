<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%-- CSS files --%>
<dnn:DnnCssInclude ID="SkinCSS" runat="server" FilePath="skin.css" PathNameAlias="SkinPath" />

<%-- JS files --%>
<dnn:DnnJsInclude ID="BootstrapJS" runat="server" FilePath="vendors/bootstrap/dist/js/bootstrap.bundle.min.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude ID="scriptJS" runat="server" FilePath="skin.js" PathNameAlias="SkinPath" />
