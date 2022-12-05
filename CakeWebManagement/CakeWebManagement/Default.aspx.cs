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
    public partial class _Default : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["CakeDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            showClientDataInGV();
        }



        public List<product> Items { get; set; }
        protected void showClientDataInGV()
        { 
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            } 
            SqlCommand cmd = new SqlCommand("SELECT * from ProductTable", con); 
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
                    photopath = dr["photopath"].ToString().Substring(1, dr["photopath"].ToString().Length-1)
                };
                Items.Add(item);
            }
            this.DataBind();
        }

        protected void viewP_Click(object sender, EventArgs e)
        {

        }
        protected void addP_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[shopcartTable] ([idP],[priceP],[qtyP]) VALUES(@idP,@priceP,@qtyP)", con);

            //cmd.Parameters.AddWithValue("@idP", TextBox7.Text.Trim());
            //cmd.Parameters.AddWithValue("@priceP", TextBox1.Text.Trim());
            //cmd.Parameters.AddWithValue("@qtyP", TextPass.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Item Add Successful');</script>");

        }

        protected void lbtnPage_Click(object sender, EventArgs e)
        {
            LinkButton lnk = sender as LinkButton;
            String Value1 = lnk.Attributes["CustomParameter"].ToString();
            

        }




       


    }
}