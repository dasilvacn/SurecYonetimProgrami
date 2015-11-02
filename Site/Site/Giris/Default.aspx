﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Giris.Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <webopt:BundleReference ID="BundleReference1" runat="server" Path="~/Content/css" /> 

    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Scripts><asp:ScriptReference Name="jquery" /></Scripts>
    </asp:ScriptManager>
        <script>
            $(document).ready(function () {
                $('#btnGiris').click(function () {

                    var adi = $('#txtAdii').val().trim();
                    var sifre = $('#txtSifree').val().trim();
                    if (adi == "") {
                        // lütfen kullanıcı adı giriniz
                        //alert("Lütfen Kullanıcı Adı Giriniz !");
                        $('#txtAdii').animate({ height: '0px' }, 100);
                        $('#txtAdii').animate({ height: '15px' }, 250);
                        $('#txtAdii').focus();
                        return false;
                    } else if (sifre == "") {
                        // Lütfen Şifre Giriniz
                        //alert("Lütfen Şifre Giriniz !");
                        $('#txtSifree').animate({ height: '0px' }, 100);
                        $('#txtSifree').animate({ height: '15px' }, 250);
                        $('#txtSifree').focus();
                        return false;
                    } else {
                        return true;
                    }


                });
            });
        </script>
        
        <style>
            html {
                background-color:white;
            }
            .adminGirisForm {
                margin-top: 10%;
            }
        </style>
        <div class="adminGirisForm">
        
        <h1>İş Takip Sistemi Giriş Paneli </h1>

         

        <asp:TextBox ID="txtAdii" runat="server">Kullanıcı1</asp:TextBox>
        <br />
        <asp:TextBox ID="txtSifree" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btnGiris" runat="server" Text="Admin Girişi" OnClick="btnGiris_Click" />
        <br />
        <br />
        <asp:Button ID="BtnPersonelGiris" runat="server" OnClick="BtnPersonelGiris_Click" Text="Personel Girişi" />

        </div>   


    </form>
</body>
</html>





    

