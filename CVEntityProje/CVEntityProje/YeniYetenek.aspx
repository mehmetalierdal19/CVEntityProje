<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="CVEntityProje.YeniYetenek" %>

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
        <asp:Button ID="btnKaydet" runat="server" CssClass="btn btn-success" Text="Kaydet" OnClick="btnKaydet_Click" />
    </div>
</asp:Content>

