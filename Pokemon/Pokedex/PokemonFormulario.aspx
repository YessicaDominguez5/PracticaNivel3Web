<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonFormulario.aspx.cs" Inherits="Pokedex.PokemonFormulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">

            <div class="mb-3">
                <label for="txtId" class="form-label">ID</label>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>

            </div>

            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Código de artículo</label>
                <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>

            </div>

            <div class="mb-3">
                <label for="txtNombre" class="form-label">Artículo</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>

            </div>

            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox ID="txtDescripcion" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

            </div>

            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Marca</label>
                <asp:DropDownList ID="ddlMarca" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>

            </div>

            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoria</label>
                <asp:DropDownList ID="ddlCategoria" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>

            </div>

            <div class="mb-3">
                <asp:Button ID="btnAceptar" CssClass="btn btn-success" OnClick="btnAceptar_Click" runat="server" Text="Aceptar" />
                <asp:Button ID="btnCancelar" CssClass="btn btn-secondary" Onclick="btnCancelar_Click" runat="server" Text="Cancelar" />
            </div>



        </div>
    </div>

</asp:Content>
