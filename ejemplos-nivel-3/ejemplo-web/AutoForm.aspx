<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemplo_web.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- aca se crean los inputs paran cargar los datos en el formulario--%>
    <div class="row">
        <div class="col-6"></div>

        <div class="mb-3">
            <%--Pone el id con el campo para escribir--%>
            <label for="txtId" class="form-label">ID</label>
            <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>

        </div>

        <div class="mb-3">
            <%--Pone el Modelo con el campo para escribir--%>

            <label for="txtModelo" class="form-label">MODELO</label>
            <asp:TextBox ID="txtModelo" CssClass="form-control" runat="server"></asp:TextBox>


        </div>

        <div class="mb-3">

            <%--Pone La descripción con el campo para escribir que es multilinea--%>
            <label for="txtDescripcion" class="form-label">DESCRIPCION</label>
            <asp:TextBox ID="txtDescripcion" CssClass="form-control" TextMode="Multiline" runat="server"></asp:TextBox>


        </div>

        <div class="mb-3">

            <%--Pone el desplegable para elegir el color--%>

            <label for="txtColor" class="form-label">COLOR</label>
            <asp:DropDownList ID="ddlColores" CssClass="form-select" runat="server"></asp:DropDownList>

        </div>

        <div class="mb-3">
            <%--Pone la fecha con el formato fecha y el almanaque para seleccionarla--%>

            <label for="txtFecha" class="form-label">FECHA</label>
            <asp:TextBox ID="txtFecha" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>


        </div>
        <div>

            <%--pone el cuadradito para seleccionar si es usado o no con un tilde--%>

            <asp:CheckBox ID="checkBoxUsado" runat="server" />
            <label for="checkBoxUsado" class="form-label">USADO</label>


        </div>

        <div class="mb-3">

            <%--Pone varios circulos para marcar la opcion correcta--%>

            <asp:RadioButton ID="radioButtonImportado" Text="Importado" GroupName="Importado" runat="server" />

            <asp:RadioButton ID="radioButtonNacional" Text="Nacional" GroupName="Importado" Checked="true" runat="server" />


        </div>

        <div class="mb-3">

            <%--boton aceptar y cancelar   --%>

            <asp:Button ID="btnAceptar" Text="ACEPTAR" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
            <a href="Default.aspx">CANCELAR</a>


        </div>









    </div>




</asp:Content>
