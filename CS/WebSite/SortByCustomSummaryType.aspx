<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SortByCustomSummaryType.aspx.cs" Inherits="CustomSort" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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
        <dx:ASPxHyperLink ID="ASPxHyperLink4" runat="server" Text="SortValueByName.aspx" NavigateUrl="SortValueByName.aspx"/><br />

        <dx:ASPxGridView ID="gridCustomers" runat="server" AutoGenerateColumns="False" Width="500px" 
            DataSourceID="dsCustomers" KeyFieldName="CustomerID" 
            oncustomsummarycalculate="gridCustomers_CustomSummaryCalculate">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" 
                    VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="2" GroupIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Region" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
            <GroupSummary>
                <dx:ASPxSummaryItem FieldName="Country" SummaryType="Custom"/>
            </GroupSummary>
            <Settings ShowGroupPanel="True"/>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="dsCustomers" runat="server" 
            DataFile="~/App_Data/nwind.mdb" 
            SelectCommand="SELECT [CustomerID], [ContactName], [City], [Region], [Country], [CompanyName] FROM [Customers]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
