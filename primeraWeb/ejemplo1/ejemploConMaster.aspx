<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ejemploConMaster.aspx.cs" Inherits="ejemplo1.ejemploConMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ejemplo con Master</h1>

    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

    <br />
    
    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>

    <br />

    <asp:Button ID="btnAceptar" runat="server" Onclick="btnAceptar_Click" Text="Aceptar" />

    <asp:Label ID="labelSaludo" runat="server" Text=""></asp:Label>

    <%--<a href="About">DESCRIP</a>--%>

</asp:Content>
