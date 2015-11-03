<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="PersonelYonetim.aspx.cs" Inherits="Site.Admin.PersonelYonetim" %>




<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Ekleme Paneli&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Silme Paneli<br />
        <br />

    
    Kullanıcı Adı:<asp:TextBox ID="txtKulAdi" runat="server" style="margin-left: 7px" Width="177px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel Adı:&nbsp;
        <asp:TextBox ID="txtSil" runat="server" Width="152px" OnTextChanged="txtSil_TextChanged"></asp:TextBox>
     
   
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
            Departmanı:&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 11px" Width="174px">
            
        </asp:DropDownList>
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
        <asp:Button ID="btnEkle" runat="server" Height="34px" style="margin-left: 46px" Text="EKLE" Width="170px" OnClick="btnEkle_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


  
            </asp:Content>