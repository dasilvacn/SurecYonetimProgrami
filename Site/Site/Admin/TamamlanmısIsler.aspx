<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TamamlanmısIsler.aspx.cs" Inherits="Site.Admin.TamamlanmısIsler" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>



<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <p style="font-size: x-large; font-family: Arial, Helvetica, sans-serif; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tamamlanmış İş Listesi</p>
    


    <p>
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <EditItemStyle BackColor="#CCCCCC" />
        <ItemStyle BackColor="#EAEAFF" HorizontalAlign="Left" />
        <ItemTemplate>
            Görev Adı : <strong><%#Eval("gorevAdi")%></strong><br>
            Ad: <strong><%#Eval("adi")%></strong><br>
            Soyad: <strong><%#Eval("soyadi")%></strong><br>
            Departman Adı : <strong><%#Eval("deptAdi")%></strong><br>
            Başlangıç tarihi: <strong><%#Eval("baslangıcTar")%></strong><br>
            Tarihi: <strong><%#Eval("bitisTar")%></strong><br>
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

