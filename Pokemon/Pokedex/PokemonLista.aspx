<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex.PokemonLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Lista de Pokemon</h1>

    <asp:GridView ID="dgvArticulos" AutoGenerateColumns="false" cssClass="table" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Artículo" DataField="NombreArticulo" />
            <asp:BoundField HeaderText="Categoría" DataField="CategoriaArticulo.DescripcionCategoria" />

        </Columns>



    </asp:GridView>
    
</asp:Content>
