<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pokedex.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>HOLA!!</h1>
    <p>Llegaste al Pokedex, sumate al mundo Pokémon</p>


    <div class="row row-cols-1 row-cols-md-3 g-4">
    <%--<%foreach (clases.Articulo arti in ListaArticulo)
        {
            %>

        <div class="col">
            <div class="card">
                <img src="<%: arti.UrlImagenArticulo%>" class="card-img-top" alt="<%arti.NombreArticulo.ToString();%>">
                <div class="card-body">
                    <h5 class="card-title"><%: arti.NombreArticulo %></h5>
                    <p class="card-text"><%: arti.DescripcionArticulo %></p>
                    <a href="DetalleArticulo.aspx?id=<%: arti.Id %>">Ver Detalle</a>
                </div>
            </div>
        </div>

    </div>
    <% } %>--%>

    <asp:Repeater ID="repRepetidor" runat="server">

        <ItemTemplate>

                <div class="col" >
                    <div class="card">
                        <img src="<%#Eval("UrlImagenArticulo")%>" class="card-img-top" alt="<%#Eval("NombreArticulo")%>">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("NombreArticulo")%></h5>
                            <p class="card-text"><%#Eval("DescripcionArticulo")%></p>
                            <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                            <asp:Button ID="btnEjemplo" runat="server" cssClass="btn btn-primary" Text="Ejemplo" CommandArgument='<%#Eval("Id")%>' CommandName="pokemonId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>





        </ItemTemplate>


    </asp:Repeater>

            </div>

</asp:Content>
