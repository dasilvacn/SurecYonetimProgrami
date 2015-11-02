using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Site.Giris
{
    public partial class Default : System.Web.UI.Page
    {

        DB db = new DB();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cm = new SqlCommand("SP_AdminGiris", db.baglan());
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@kuladi", SqlDbType.NVarChar, 50).Value = txtAdii.Text.Trim();
            cm.Parameters.Add("@sifre", SqlDbType.NVarChar, 50).Value = db.MD5Sifrele(txtSifree.Text.Trim());
            SqlDataReader rd = cm.ExecuteReader();

            if (rd.Read())
            {

                // session olayları
                Session["id"] = rd["id"].ToString();
                Session["adi"] = rd["adi"].ToString();
                Session["soyadi"] = rd["soyadi"].ToString();
                db.kapat();
                // sayfa yönlendirliyor
                Response.Redirect("AdminHome.aspx", true);

            }
        }

        protected void BtnPersonelGiris_Click(object sender, EventArgs e)
        {
            SqlCommand cm = new SqlCommand("SP_PersonelGiris", db.baglan());
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@kuladi", SqlDbType.NVarChar, 50).Value = txtAdii.Text.Trim();
            cm.Parameters.Add("@sifre", SqlDbType.NVarChar, 50).Value = db.MD5Sifrele(txtSifree.Text.Trim());
            SqlDataReader rd = cm.ExecuteReader();

            if (rd.Read())
            {

                // session olayları
                Session["id"] = rd["id"].ToString();
                Session["adi"] = rd["adi"].ToString();
                Session["soyadi"] = rd["soyadi"].ToString();
                db.kapat();
                // sayfa yönlendirliyor
                Response.Redirect("PersonelHome.aspx", true);

            }
        }
    }
}