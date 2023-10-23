﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="TiendaVinilos.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="ContenedorPrincipal">
        <div class="container-Formularios" style="width: 600px; height: 500px; margin-top: 20px">
           <h4 style="color: #FFFFFF">Mi Perfil</h4>
                <div class="row"> 
                <div class="col">
                <asp:Label runat="server" Text="Nombre" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtNombre" runat="server" class="controls"></asp:TextBox>
                </div>
                </div>
                <div class="row"> 
                <div class="col">
               <asp:Label runat="server" Text="Apellido" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtApellido" class="controls" aria-label="Apellido" runat="server"></asp:TextBox>
                </div>
                </div>
                <div class="row"> 
                <div class="col">
                <asp:Label runat="server" Text="Email" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtEmail" CssClass="controls" type="Mail" aria-label="Email" runat="server" />
                </div>
                </div>
                <div class="row"> 
                <div class="col">
                <asp:Label runat="server" Text="Direccion" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtDireccion" runat="server" class="controls"></asp:TextBox>
                </div>
                </div>
                <div class="row"> 
                <div class="col">
                <asp:Label runat="server" Text="Localidad" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtLocalidad" runat="server" class="controls"></asp:TextBox>
                </div>
                </div>
                <div class="row"> 
                <div class="col">
                <asp:Label runat="server" Text="Provincia" ForeColor="White" Font-Size="Medium" ></asp:Label>
                </div>
                <div class="col">
                <asp:TextBox ID="TxtProvincia" runat="server" class="controls"></asp:TextBox>
                </div>
                </div> 
                <div class="row"> 
                <div class="col">
                <asp:Button ID="BtnAceptar" Text="GUARDAR CAMBIOS" OnClick="BtnAceptar_Click" runat="server" CssClass="btn btn-primary" />
                </div>
                <div class="col">   
               <asp:Button ID="BtnCancelar" Text="CANCELAR" OnClick="BtnCancelar_Click" runat="server" CssClass="btn btn-danger" />
                 </div>
                    <asp:Label ID="LblMensaje" ForeColor="red" runat="server" Visible="false"></asp:Label>
                </div> 
                <svg xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#0c0d0d}</style><path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/></svg>
                <asp:Label runat="server" Text="Sumar mis libros" FareColor="White" Font-Size="Medium"></asp:Label>

        </div>
  </div>

</asp:Content>
