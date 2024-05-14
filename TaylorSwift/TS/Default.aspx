<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TS.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-2">


            <asp:GridView CssClass="table table-dark" ID="dgvAlbums" DataKeynames="Id" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvAlbums_SelectedIndexChanged" runat="server">



                <Columns>

                    <asp:BoundField HeaderText="ALBUM" DataField="nombreAlbum" />
                    <asp:BoundField HeaderText="CANCIONES" DataField="songs" />
                    <asp:BoundField HeaderText="COLOR" DataField="color" />
                    <asp:BoundField HeaderText="FECHA DE LANZAMIENTO" DataField="fechaLanzamiento" />
                    <asp:BoundField HeaderText="ESTILO MUSICAL" DataField="estilo" />
                    <asp:CheckBoxField HeaderText="TAYLOR'S VERSION" DataField="taylorsVersion"/>
                    <asp:CommandField HeaderText="ACCION" ShowSelectButton="true" SelectText="Seleccionar" />
                   

                </Columns>



            </asp:GridView>

            <a href="Form.aspx">AGREGAR</a>







        </div>

    </div>

</asp:Content>
