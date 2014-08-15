<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="orderpage.aspx.cs" Inherits="NMacKenzieEntFinal.orderpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblProductID" runat="server" Text="Product ID"></asp:Label>
    <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>

    <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
    <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtProductName" Display="Dynamic"></asp:RequiredFieldValidator>
    
    <asp:Label ID="lblProductPrice" runat="server" Text="Product Price"></asp:Label>
    <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtProductPrice" Display="Dynamic"></asp:RequiredFieldValidator>

    <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
    <asp:TextBox ID="txtQuantity" runat="server">
    </asp:TextBox>
    <asp:RangeValidator ID="rgvQuantity" runat="server" ErrorMessage="must be above 0 and not a decimal or fraction" ControlToValidate="txtQuantity" Type="Integer" MinimumValue="0" MaximumValue="10000"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>

    <asp:Label ID="lblCustomers" runat="server" Text="Customers"></asp:Label>
    <asp:DropDownList ID="ddlCustomers" runat="server" DataValueField="CustomerID" DataTextField="CompanyName"></asp:DropDownList>

    <asp:Label ID="lblShippers" runat="server" Text="Shippers"></asp:Label>
    <asp:DropDownList ID="ddlShippers" runat="server" DataValueField="ShipperID" DataTextField="CompanyName"></asp:DropDownList>

    <asp:Label ID="lblShipName" runat="server" Text="Ship Name"></asp:Label>
    <asp:TextBox ID="txtShipName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtShipName"></asp:RequiredFieldValidator>

    <asp:Label ID="lblShipAddress" runat="server" Text="Ship address"></asp:Label>
    <asp:TextBox ID="txtShipAddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtShipAddress"></asp:RequiredFieldValidator>

    <asp:Label ID="lblShipCity" runat="server" Text="Ship City"></asp:Label>
    <asp:TextBox ID="txtShipCity" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtShipCity"></asp:RequiredFieldValidator>

    <asp:Label ID="lblShipRegion" runat="server" Text="Ship Region"></asp:Label>
    <asp:TextBox ID="txtShipRegion" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtShipRegion"></asp:RequiredFieldValidator>
    
    <asp:Label ID="lblShipPostalCode" runat="server" Text="Ship Postal Code"></asp:Label>
    <asp:TextBox ID="txtShipPostalCode" runat="server"></asp:TextBox>

    
    <asp:Label ID="lblShipCountry" runat="server" Text="Ship Country"></asp:Label>
    <asp:TextBox ID="txtShipCountry" runat="server"></asp:TextBox>

    <asp:Button ID="btnSaveOrder" runat="server" Text="Save Order" OnClick="btnSaveOrder_Click" />
</asp:Content>
