<%@ Page Title="Tamamlanacak İşler" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TamamlanacakIsler.aspx.cs" Inherits="Site.Admin.TamamlanacakIsler" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <p style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tamamlanacak İş Listesi</p>
    
    <p>
        <asp:DataList ID="DataList2" runat="server">
        <EditItemStyle BackColor="#CCCCCC" />
        <ItemStyle BackColor="#EAEAFF" HorizontalAlign="Left" />
        <ItemTemplate>
            Görev Adı : <strong><%#Eval("gorevAdi")%></strong><br>
            Ad: <strong><%#Eval("adi")%></strong><br>
            Soyad: <strong><%#Eval("soyadi")%></strong><br>
            Departman Adı : <strong><%#Eval("deptAdi")%></strong><br>
            Tahmini Başlangıç tarihi: <strong><%#Eval("baslangıcTar")%></strong><br>
            Tahmini Bitiş Tarihi: <strong><%#Eval("bitisTar")%></strong><br>
            <asp:Button ID="btnMsj" runat="server" Text="Mesaj Gönder" Width="130px" />
            <asp:Button ID="btnGrvAta" runat="server" Text="Yeni Görev Ata" Width="130px" />
           
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFFFCC" BorderStyle="Groove" Font-Names="Algerian" />
        <SeparatorTemplate>
            <hr>
        </SeparatorTemplate>
        
        </asp:DataList>
        

    </p>
</asp:Content>