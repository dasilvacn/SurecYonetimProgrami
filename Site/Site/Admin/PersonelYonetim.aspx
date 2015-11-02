<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="PersonelYonetim.aspx.cs" Inherits="Site.Admin.PersonelYonetim" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <asp:Panel ID="Panel1" runat="server" Height="598px" Width="347px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Ekleme Paneli&nbsp;&nbsp;
        <br />
        <br />
        Kullanıcı Adı:<asp:TextBox ID="txtKulAdi" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Şifresi:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSifre" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Mail Adresi:&nbsp;
            <asp:TextBox ID="txtMail" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Adı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAdi" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Soyadı:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSoyadi" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Departmanı:&nbsp;<asp:TextBox ID="txtDept" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Telefon:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTel" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            Adres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAdres" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEkle" runat="server" Height="34px" style="margin-left: 0px" Text="EKLE" Width="219px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </asp:Panel>
  
            </asp:Content>