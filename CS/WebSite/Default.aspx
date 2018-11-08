<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to Use ASPxClientEdit Methods to Clear Editors Located within a Specified Container</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxTextBox ID="txtBox1" runat="server" ClientInstanceName="txtBox1" Width="170px">
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxComboBox ID="comboBox1" runat="server" ClientInstanceName="comboBox1" DataSourceID="AccessDataSource1"
            TextField="CompanyName" ValueField="CustomerID">
        </dx:ASPxComboBox>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
            SelectCommand="SELECT [CustomerID], [CompanyName] FROM [Customers]"></asp:AccessDataSource>
        <br />
        <dx:ASPxTextBox ID="txtBox2" runat="server" ClientInstanceName="txtBox2" Width="170px">
        </dx:ASPxTextBox>
        <br />
        <br />
        <dx:ASPxButton ID="clearBtn" runat="server" AutoPostBack="False" ClientInstanceName="clearBtn"
            Text="Clear Editors">
            <ClientSideEvents Click="function(s, e) {
ASPxClientEdit.ClearEditorsInContainer(null);
}" />
        </dx:ASPxButton>
        <br />
        <dx:ASPxButton ID="showPopupBtn" runat="server" AutoPostBack="False" ClientInstanceName="showPopupBtn"
            Text="Show Popup" Style="margin-right: 0px">
        </dx:ASPxButton>
    </div>
    <dx:ASPxPopupControl ID="Popup" runat="server" ClientInstanceName="Popup" PopupElementID="showPopupBtn"
        CloseAction="CloseButton" PopupHorizontalAlign="WindowCenter">
        <ClientSideEvents Closing="function(s, e) {
ASPxClientEdit.ClearEditorsInContainerById('PopupCollection');
}" />
        <ContentCollection>
            <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                <div id="PopupCollection">
                    <dx:ASPxTextBox ID="txtBox3" runat="server" ClientInstanceName="txtBox3" Width="170px">
                    </dx:ASPxTextBox>
                    <br />
                    <dx:ASPxComboBox ID="comboBox2" runat="server" ClientInstanceName="comboBox2" DataSourceID="AccessDataSource1"
                        TextField="CompanyName" ValueField="CustomerID">
                    </dx:ASPxComboBox>
                    <br />
                    <dx:ASPxTextBox ID="txtBox4" runat="server" ClientInstanceName="txtBox4" Width="170px">
                    </dx:ASPxTextBox>
                </div>
            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>
    </form>
</body>
</html>
