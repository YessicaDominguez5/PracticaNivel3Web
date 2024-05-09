<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemplo_web.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">

        <div class="col">

            <%--aca crea la grilla--%>

    <asp:GridView ID="dgvAutos" CssClass="table table-dark table-bordered" autogenerateColumns="false" runat ="server">

        <Columns>

            <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
            <asp:BoundField HeaderText="Color" DataField="Color" />
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />




        </Columns>

    </asp:GridView>

            <a href="Autoform.aspx">AGREGAR</a>

     </div>

    </div>




</asp:Content>
