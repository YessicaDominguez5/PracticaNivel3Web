<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BootstrapEjemplo.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-2"></div>
        <div class="col">

            <div class="mb-3">
                <label for="txtBox" class="form-label">Email address</label>
                <asp:TextBox ID="txtBox" CssClass="form-control" runat="server" type="email"></asp:TextBox>

            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Password</label>
                <asp:TextBox ID="TxtPassword" CssClass="form-control" runat="server" type="password"></asp:TextBox>

            </div>
            <div class="mb-3 form-check">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <asp:Button CssClass="btn btn-primary" ID="btnIngresar" OnClick="btnIngresar_Click" runat="server" Text="Ingresar" />
            


        </div>
        <div class="col-2"></div>


    </div>


</asp:Content>
