<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Site.Admin.Home" %>



<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

<p style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Personel İş Listesi</p>
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" GridLines="Both">
        <EditItemStyle BackColor="#CCCCCC" />
        <ItemStyle BackColor="#EAEAFF" HorizontalAlign="Left" />
        <ItemTemplate>
            Görev Adı : <strong><%#Eval("gorevAdi")%></strong><br>
            Ad: <strong><%#Eval("adi")%></strong><br>
            Soyad: <strong><%#Eval("soyadi")%></strong><br>
            Departman Adı : <strong><%#Eval("deptAdi")%></strong><br>
            Tahmini Başlangıç tarihi: <strong><%#Eval("baslangıcTar")%></strong><br>
            Tahmini Bitiş Tarihi: <strong><%#Eval("bitisTar")%></strong><br>
            Görev Durumu: &nbsp;<strong><%#Eval("durum")%></strong><br> <br />
            <asp:Button ID="btnMsj" runat="server" Text="Mesaj Gönder" Width="130px" />
            <asp:Button ID="btnGrvAta" runat="server" Text="Yeni Görev Ata" Width="132px" />
           
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFFFCC" BorderStyle="Groove" Font-Names="Algerian" />
        <SeparatorTemplate>
            <hr>
        </SeparatorTemplate>
    </asp:DataList>


    <p>&nbsp;</p>
</asp:Content>
