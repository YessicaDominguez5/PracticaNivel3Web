<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="TS.Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
            </div>
            <div class="col">

                <br />
                <hr />
                <br />

                <%--id--%>

                <div class="mb-3">

                    <label for="txtId" class="form-label">ID</label>

                    <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>

                </div>

                <%--nombre del album--%>

                <div class="mb-3">

                    <label for="txtNombreAlbum" class="form-label">ALBUM</label>

                    <asp:TextBox ID="txtNombreAlbum" CssClass="form-control" runat="server"></asp:TextBox>


                </div>

                <%--canciones--%>

                <div class="mb-3">
                    <label for="txtSongs" class="form-label">SONGS</label>
                    <asp:TextBox ID="txtSongs" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>


                </div>

                <%--color--%>

                <div class="mb-3">
                    <label for="ddlColores" class="form-label">COLOR</label>
                    <asp:DropDownList ID="ddlColores" CssClass="form-control" runat="server"></asp:DropDownList>

                </div>

                <%--fecha de lanzamiento--%>

                <div class="mb-3">
                    <label for="txtFechaLanzamiento" class="form-label">FECHA DE LANZAMIENTO</label>
                    <asp:TextBox ID="txtFechaLanzamiento" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>

                    <%--Estilo Musical--%>
                </div>
                <div class="mb-3">
                    <label for="radioBCountry" class="form-label">ESTILO MUSICAL</label>
                    <div>

                        <asp:RadioButton ID="radioBCountry" Text="Country" GroupName="Country" Checked="true" runat="server" />

                    </div>
                    <div>

                        <asp:RadioButton ID="radioBPop" Text="Pop" GroupName="Country" runat="server" />

                    </div>
                    <div>

                        <asp:RadioButton ID="radioBIndie" Text="Indie Folk" GroupName="Country" runat="server" />

                    </div>

                </div>
                <%--Taylors Version--%>

                <div class="mb-3">
                    <label for="cBoxTaylorsVersion" class="form-label">TAYLOR'S VERSION</label>

                    <asp:CheckBox ID="cBoxTaylorsVersion" runat="server" />
                </div>

                <div>


                    <asp:Button ID="btnAceptar" CssClass="btn btn-success" OnClick="btnAceptar_Click" runat="server" Text="ACEPTAR" />
                    <asp:Button ID="btnModificar" CssClass="btn btn-warning" Onclick="btnModificar_Click" runat="server" Text="MODIFICAR" />
                    <asp:Button ID="btnEliminar" CssClass="btn btn-danger"  OnClick="btnEliminar_Click" runat="server" Text="ELIMINAR" />
                    <asp:Button ID="btnCancelar" CssClass="btn btn-secondary" OnClick="btnCancelar_Click" runat="server" Text="CANCELAR" />

                </div>

                <br />
                <hr />
                <br />


            </div>
            <div class="col">
            </div>
        </div>
    </div>
</asp:Content>
