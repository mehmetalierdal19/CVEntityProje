<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CVEntityProje.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered mt-3">
        <thead>
            <tr>
                <th>ID</th>
                <th>YETENEK</th>
                <th>DERECE</th>
                <th>SİL</th>
                <th>GÜNCELLE</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID")  %></td>
                        <td><%# Eval("YETENEK")  %></td>
                        <td><%# Eval("DERECE")  %></td>
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
    <a href="YeniYetenek.aspx" class="btn btn-success ms-2 mt-2">Yeni Yetenek Ekle</a>
</asp:Content>
