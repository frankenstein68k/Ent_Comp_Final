<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="NMacKenzieEntFinal._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3>Order Table</h3>
        <p>Please Select a product, the price will be display afterwards</p>
        <asp:DropDownList ID="ddlProducts" runat="server" DataValueField="ProductID" DataTextField="ProductName">
        </asp:DropDownList>
        <asp:Label ID="lblProductPriceLabel" runat="server" Text="The price of your item is $"></asp:Label>
        <asp:DropDownList ID="ddlProductPrice" runat="server" DataValueField="UnitPrice" DataTextField="UnitPrice" >
        </asp:DropDownList>
        <asp:Button ID="btnUpdatePrice" runat="server" Text="Update Form" OnClick="btnUpdatePrice_Click"/>
        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click"/>
    </div>
</asp:Content>
