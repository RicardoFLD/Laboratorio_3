<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProvincia.aspx.cs" Inherits="Ejercicio_semana8.Pages.CrearProvincia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Crear provincia</h1>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Provincia"></asp:Label>
    <br />
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="Button2_Click" />
</asp:Content>
