<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MarcoPoloNala.aspx.cs" Inherits="aprendiendo.MarcoPoloNala" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h1> Marco Polo Nala </h1>
    <input type="type" name="name" value="" />
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <asp:Label ID="LabelInstruccion" runat="server" Text="Ingrese su nombre:"></asp:Label>
    <asp:TextBox ID="TxtNombre" runat="server" OnTextChanged="TxtNombre_TextChanged"></asp:TextBox>
    <asp:Button ID="BtnAceptar" runat="server" OnClick="BtnAceptar_Click" Text="ACEPTAR" />
    <asp:Label ID="LabelBienvenida" runat="server" Text=""></asp:Label>
    <asp:Label ID="LabelSecundaria" runat="server" Text=""></asp:Label>
   <%-- <a href="About">Ir a About</a>--%>
    
    <a href="About?id=3">Descripcion</a>

</asp:Content>