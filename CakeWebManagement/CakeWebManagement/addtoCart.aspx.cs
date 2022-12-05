using AuthorizeNet.Api.Contracts.V1;
using AuthorizeNet.Api.Controllers;
using AuthorizeNet.Api.Controllers.Bases;
using CakeWebManagement.models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CakeWebManagement
{
    public partial class addtoCart : Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["CakeDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                
                
                int rawId = Convert.ToInt32(Request.QueryString["id"]);
                double price = Convert.ToDouble(Request.QueryString["price"]);

                if (rawId ==0)
                {
                    GetTransactionDetails();
                    refreshdata();
                }
                else
                {
                    GetTransactionDetails();
                    addProducttoCart(rawId, price);
                    refreshdata();

                }

            }
        }

        protected void addProducttoCart(int rawId, double price)
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[shopcartTable] ([idP],[priceP],[qtyP],[idU]) VALUES(@idP,@priceP,@qtyP,@idU)", con);

            cmd.Parameters.AddWithValue("@idP", rawId);
            cmd.Parameters.AddWithValue("@priceP", price);
            cmd.Parameters.AddWithValue("@qtyP", 1);
            cmd.Parameters.AddWithValue("@idU", 1);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Item Add Successful');</script>");

            //Response.Redirect("default.aspx");
        }


        private void GetTransactionDetails()
        {

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from shopcartTable s inner join productTable p on s.idP = p.idP", con);



            GridView1.EmptyDataText = "No Records Found";
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();


            

            con.Close();
        }





        public void refreshdata()
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("select * from shopcartTable s inner join productTable p on s.idP = p.idP", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }


            string query = "SELECT sum(priceP) as totalP from shopcartTable;";
            using (SqlCommand cmd2 = new SqlCommand(query, con))
            {

                cmd2.ExecuteNonQuery();
                object result = cmd2.ExecuteScalar();
                totalprice.Text = Convert.ToString(result);
            }

            con.Close();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from shopcartTable where id =@id", con);
            cmd.Parameters.AddWithValue("id", id);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            refreshdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            refreshdata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            refreshdata();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);

            TextBox txtqty = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox priceP = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update shopcartTable set qtyP = @qtyP, priceP = @priceP*@qtyP where id=@id", con);

            cmd.Parameters.AddWithValue("@qtyP", txtqty.Text);
            cmd.Parameters.AddWithValue("@priceP", Convert.ToInt32(priceP.Text));
            cmd.Parameters.AddWithValue("@id", id);

            int i = cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            refreshdata();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }













        //payment



       






    }
}