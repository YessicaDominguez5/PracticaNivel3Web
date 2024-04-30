<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemplo_web.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--public int Id { get; set; }
 public string Modelo { get; set; }
 public string Descripcion { get; set; }
 public string Color { get; set; }

 public DateTime Fecha { get; set; }

 public bool Usado { get; set; }

 public bool Importado { get; set; }--%>

    <div class="row">
        <div class="col-6"></div>

        <div class="mb-3">
            <label for="txtId" class="form-label">ID</label>
            <asp:TextBox ID="txtId" cssClass="form-control" runat="server"></asp:TextBox>

        </div>
        <div class="mb-3">
            <label for="txtModelo" class="form-label">MODELO</label>
            <asp:TextBox ID="txtModelo" cssClass="form-control" runat="server"></asp:TextBox>

            
        </div>


    </div>




</asp:Content>
