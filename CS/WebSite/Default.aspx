﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" Text="CustomColumnSort.aspx" NavigateUrl="CustomColumnSort.aspx"/><br />
        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="SortByAnotherField.aspx" NavigateUrl="SortByAnotherField.aspx"/><br />
        <dx:ASPxHyperLink ID="ASPxHyperLink3" runat="server" Text="SortByCustomSummaryType.aspx" NavigateUrl="SortByCustomSummaryType.aspx"/><br />
        <dx:ASPxHyperLink ID="ASPxHyperLink4" runat="server" Text="SortValueByName.aspx" NavigateUrl="SortValueByName.aspx"/><br />
    </div>
    </form>
</body>
</html>
