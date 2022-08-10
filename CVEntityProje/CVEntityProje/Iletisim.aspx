<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="CVEntityProje.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered mt-3">
        <thead>
            <tr>
                <th>ID</th>
                <th>AD SOYAD</th>
                <th>MAİL ADRESİ</th>
                <th>KONU</th>
                <th>SİL</th>
                <th>GÜNCELLE</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID")  %></td>
                        <td><%# Eval("ADSOYAD")  %></td>
                        <td><%# Eval("MAIL")  %></td>
                        <td><%# Eval("KONU")  %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "YetenekSil.Aspx?ID=" + Eval("ID") %>'>Sil</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-primary" NavigateUrl='<%# "YetenekGuncelle.Aspx?ID=" + Eval("ID") %>'>Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
