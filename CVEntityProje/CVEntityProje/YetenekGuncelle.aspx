<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="CVEntityProje.YetenekGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w-75 mx-auto mt-5">
        <div class="mb-5">
            <label class="form-label">Yetenek Adı</label>
            <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="mb-5">
            <label class="form-label">Derece</label>
            <asp:TextBox ID="txtDerece" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnKaydet" runat="server" CssClass="btn btn-success" Text="Güncelle" OnClick="btnKaydet_Click"/>
        <asp:Label ID="Label1" runat="server" Text="" Visible="false" CssClass="form-label text-danger"></asp:Label>
    </div>
</asp:Content>
