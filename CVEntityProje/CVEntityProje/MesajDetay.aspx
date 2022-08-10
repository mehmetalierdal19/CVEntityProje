<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="CVEntityProje.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w-75 mx-auto mt-4">
        <asp:TextBox ID="txtAd" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtMail" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtKonu" runat="server" Enabled="false" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtMesaj" runat="server" Enabled="false" CssClass="form-control" TextMode="MultiLine" Height="100"></asp:TextBox>
    </div>
</asp:Content>
