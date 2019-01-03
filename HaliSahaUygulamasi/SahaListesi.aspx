<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SahaListesi.aspx.cs" Inherits="HaliSahaUygulamasi.SahaYonetimi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnCancelCommand="DataList1_CancelCommand" OnUpdateCommand="DataList1_UpdateCommand">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>
                    <td><%# Eval("sahaAD") %></td>
                    <td><%#Eval("ilAd") %></td>
                    <td>
                        <asp:LinkButton Text="Düzenle" runat="server" CommandName="Edit"/></td>
                    <td>
                        <asp:LinkButton Text="Sil" runat="server" CommandName="Delete"/></td>
                </tr>
        </ItemTemplate>
        <EditItemTemplate>
             <td>
                 <asp:TextBox runat="server" ID="txtsahaAd" text='<%# Eval("sahaAD") %>'/></td>
            <td>
            <asp:DropDownList ID="ddlil" runat="server" text='<%#Eval("ilAd") %>'></asp:DropDownList></td>
            <td>
                <asp:LinkButton Text="Güncelle aaaa" runat="server" CommandName="Update"/></td>
            <td>
                <asp:LinkButton Text="İptal" runat="server" CommandName="Cancel" /></td>
        </EditItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:DataList>
</asp:Content>
