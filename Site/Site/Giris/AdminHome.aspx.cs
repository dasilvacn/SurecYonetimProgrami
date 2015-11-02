using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Giris
{
    public partial class AdminHome : System.Web.UI.Page
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

        private void VeriListele()
        {
            //SQL bağlantımı, Sql proc ve Reader nesnemi oluşturuyorum.
            SqlCommand cm = new SqlCommand("SP_GorevList", db.baglan());
            cm.CommandType = CommandType.StoredProcedure;
            SqlDataReader rd;

            try
            {
                db.baglan();
                //ExecuteReader kullanıyorum çünkü bana bir liste veri dönecek.
                rd = cm.ExecuteReader();
                 DataList1.DataSource = rd;//DataListimi veri ile bağlıyorum ve veri ile dolduruyorum.
               // DataList1.ItemStyle.BackColor = System.Drawing.Color.Yellow;
                DataList1.DataBind();
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}