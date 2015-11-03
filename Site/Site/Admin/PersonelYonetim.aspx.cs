using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;

namespace Site.Admin
{
    public partial class PersonelYonetim : System.Web.UI.Page
    {
        DB db = new DB();

       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                VeriListele();

            }
           
            // session kontrol yapılıyor
            if (Session["id"] == null)
            {
                Response.Redirect("Default.aspx", true);

            }
            
           



        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand cm = new SqlCommand("SP_PersonelEkle", db.baglan());
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@kuladi", SqlDbType.NVarChar, 50).Value = txtKulAdi.Text.Trim(); 
            cm.Parameters.Add("@sifre", SqlDbType.NVarChar, 32).Value = db.MD5Sifrele(txtSifre.Text.Trim());
            cm.Parameters.Add("@mail", SqlDbType.NVarChar, 50).Value = txtMail.Text.Trim();
            cm.Parameters.Add("@adi", SqlDbType.NVarChar, 50).Value = txtAdi.Text.Trim();
            cm.Parameters.Add("@soyadi", SqlDbType.NVarChar, 50).Value = txtSoyadi.Text.Trim();
            cm.Parameters.Add("@dept", SqlDbType.NVarChar, 150).Value = DropDownList1.SelectedItem.Text;
            cm.Parameters.Add("@tel", SqlDbType.NVarChar, 50).Value = txtTel.Text.Trim();
            cm.Parameters.Add("@adres", SqlDbType.NVarChar, 150).Value = txtAdres.Text.Trim();
            SqlDataReader rd = cm.ExecuteReader();

            db.kapat();
        }

        private void VeriListele()
        {
            //SQL bağlantımı, Sql proc ve Reader nesnemi oluşturuyorum.
            SqlCommand cm = new SqlCommand("SP_Departman", db.baglan());
            cm.CommandType = CommandType.StoredProcedure;

            SqlDataReader rd;

            try
            {
                db.baglan();
                //ExecuteReader kullanıyorum çünkü bana bir liste veri dönecek.
                rd = cm.ExecuteReader();
            
                DropDownList1.DataSource = rd;//DataListimi veri ile bağlıyorum ve veri ile dolduruyorum.
                DropDownList1.DataTextField ="deptAdi";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
                //Okuma işlemi bitince Reader nesnemi kapatıyorum.
                rd.Close();
            }
            catch (Exception)
            {

                Response.Write("Veri listelenemedi, hata oluştu!!");
            }

             //Her ne olursa olsun sonuçta veri tabanı bağlantımı sağlayan nesnemi kapatıyorum.
            finally
            {
                db.kapat();
            }
        }

        protected void txtSil_TextChanged(object sender, EventArgs e)
        {

        }
    }
}