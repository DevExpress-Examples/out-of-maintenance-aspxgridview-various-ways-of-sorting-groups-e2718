<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SortValueByName.aspx.cs" Inherits="SortByComboBox" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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

        <dx:ASPxGridView ID="gridProducts" runat="server" AutoGenerateColumns="False" DataSourceID="dsProducts"
            KeyFieldName="ProductID" Width="500px">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="CategoryID" VisibleIndex="1" GroupIndex="0">
                    <PropertiesComboBox DataSourceID="dsCategories" ValueType="System.Int32"
                        TextField="CategoryName" ValueField="CategoryID">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Templates>
                <GroupRowContent>
                    <%#  "Category: " + Container.GroupText%>
                </GroupRowContent>
            </Templates>
            <Settings ShowGroupPanel="True"/>
            <SettingsBehavior SortMode="DisplayText" />
        </dx:ASPxGridView>
        
        <asp:AccessDataSource ID="dsProducts" runat="server" 
            DataFile="~/App_Data/nwind.mdb" 
            SelectCommand="SELECT [ProductID], [CategoryID], [ProductName], [QuantityPerUnit], [UnitPrice], [ReorderLevel] FROM [Products]">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="dsCategories" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CategoryID], [CategoryName] FROM [Categories]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
