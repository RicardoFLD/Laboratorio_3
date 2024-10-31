<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="Ejercicio_semana8.Pagina1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

    <asp:Button ID="btnWebform2" runat="server" Text="Webform2" OnClick="btnWebform2_Click" />
</asp:Content>
