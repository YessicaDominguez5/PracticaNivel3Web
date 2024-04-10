<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="aprendiendo.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    
    <h3>INGRESASTE!</h3>
    <asp:Label ID="labelUser" runat="server" Text=""></asp:Label>
    
    <h3>DEBES LOGUEARTE!</h3>
    <a href="Login">Log in</a>
    
    <p>Use this area to provide additional information.</p>
    <a href="MarcoPoloNala">Volver</a>
    <asp:Button ID="btnContact" runat="server" OnClick="btnContact_Click" Text="Ir a Contact" />

</asp:Content>
