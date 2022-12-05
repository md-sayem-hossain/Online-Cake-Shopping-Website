using CakeWebManagement.models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CakeWebManagement
{
    public partial class ProductDetails : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["CakeDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = System.IO.Path.GetFileName(Request.Url.AbsoluteUri).ToLower().Replace(".aspx", "");
            string number = s.Substring(s.LastIndexOf("=") + 1);
           // getProductDetails(Convert.ToInt32(number));
            showClientDataInGV(Convert.ToInt32(number));
        }



        public List<product> Items { get; set; }
        protected void showClientDataInGV(int idP)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from ProductTable where idP='" + idP + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            SqlDataReader dr = cmd.ExecuteReader();
            Items = new List<product>();
            while (dr.Read())
            {
                var item = new product
                {
                    idP = Convert.ToInt32(dr["idP"]),
                    labelP = dr["labelP"].ToString(),
                    desP = dr["desP"].ToString(),
                    priceP = Convert.ToDouble(dr["priceP"]),
                    qtyP = Convert.ToInt32(dr["qtyP"]),
                    photopath = dr["photopath"].ToString().Substring(1, dr["photopath"].ToString().Length - 1)
                };
                Items.Add(item);
            }
            this.DataBind();
        }


       
        
        
        
        //void getProductDetails(int idP)
        //{
        //    try
        //    {
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }

        //        SqlCommand cmd = new SqlCommand("SELECT * from ProductTable where idP='" + idP + "';", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        da.Fill(dt);

        //        labelP.Text = dt.Rows[0]["labelP"].ToString(); 
        //        iddP.Text = dt.Rows[0]["idP"].ToString(); 
        //        priceP.Text = dt.Rows[0]["priceP"].ToString(); 
        //      //  priceP1.Value = dt.Rows[0]["priceP"].ToString(); 
        //        desP.Text = dt.Rows[0]["desP"].ToString();
        //        photopathP.ImageUrl = dt.Rows[0]["photopath"].ToString(); 
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");

        //    }
        //}



       

        }
}