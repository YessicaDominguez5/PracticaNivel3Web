<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonLista.aspx.cs" Inherits="Pokedex.PokemonLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Lista de Pokemon</h1>

    <asp:GridView ID="dgvArticulos" DataKeyNames="Id" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged" 
        AutoGenerateColumns="false" AllowPaging="true" PageSize="5"
        OnPageIndexChanging="dgvArticulos_PageIndexChanging" cssClass="table" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Artículo" DataField="NombreArticulo" />
            <asp:BoundField HeaderText="Código de Artículo" DataField="CodigoArticulo" />
            <asp:BoundField HeaderText="Categoría" DataField="CategoriaArticulo.DescripcionCategoria" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true"  SelectText="✍"/>

        </Columns>



    </asp:GridView>
    <a href="PokemonFormulario.aspx" class="btn btn-primary">Agregar</a>
    
</asp:Content>
