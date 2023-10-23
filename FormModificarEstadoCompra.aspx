﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormModificarEstadoCompra.aspx.cs" Inherits="TiendaVinilos.FormModificarEstadoCompra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="ContenedorPrincipal">
        <div class="container-Formularios" style="width: 414px; height: 225px; margin-bottom: 66px">
            <div class="row">
                <asp:Label ID="LblEstado" runat="server" ForeColor="White" Font-Size="Medium" Text="Actulizar Estado de Venta"></asp:Label>
            </div>
            <div class="row">
                <asp:DropDownList ID="ddlEstadoPedido" runat="server" CssClass="btn btn-secondary">
                </asp:DropDownList>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    <asp:Button ID="BtnAceptar" Text="Aceptar" OnClick="BtnAceptar_Click" runat="server" CssClass="btn btn-primary" ToolTip="Click para loguerte" />
                </div>
                <div class="col">
                    <asp:Button Text="Cancelar" CssClass="btn btn-danger" ID="btnCancelar" AutoPostBack="true" OnClick="btnCancelar_Click" runat="server" />
                </div>
            </div>
            <asp:Label ID="LblMensaje" ForeColor="red" runat="server" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>

