<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProvincias.aspx.cs" Inherits="Ejercicio_semana8.Pages.ListaProvincias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Lista de Provincias</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="IdProvincia" HeaderText="ID Provincia" SortExpression="IdProvincia" />
            <asp:BoundField DataField="NombreProvincia" HeaderText="Nombre Provincia" SortExpression="NombreProvincia" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
            <asp:BoundField DataField="FechaCreacion" HeaderText="Fecha de Creación" SortExpression="FechaCreacion" DataFormatString="{0:dd/MM/yyyy}" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Server=localhost;Database=PV2024C2_Lab03;Integrated Security=True;" SelectCommand="dbo.spConsultarProvincias"></asp:SqlDataSource>at="server" ConnectionString="<%$ ConnectionStrings:localhost %>" SelectCommand="dbo.spConsultarProvincias"></asp:SqlDataSource>
</asp:Content>
