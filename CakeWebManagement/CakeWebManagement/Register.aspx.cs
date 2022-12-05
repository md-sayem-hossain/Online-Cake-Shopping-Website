using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;


namespace CakeWebManagement
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingCartDBConnectionString"].ConnectionString);
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (temp != 1)
            {
                try
                {
                    con.Open();
                    string insertUser = "insert into UserTable (fname, lname, email, password) values (@fname, @lname, @email, @password)";
                    SqlCommand com = new SqlCommand(insertUser, con);
                    com.Parameters.AddWithValue("@fname", Fname.Text);
                    com.Parameters.AddWithValue("@lname", Lname.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@password", Pass.Text);
                    com.ExecuteNonQuery();
                    Response.Write("User Successfully Registered!");
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }

        }
        //private string hashPassword(string password)
        //{
        //    SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
        //    byte[] password_bytes = Encoding.ASCII.GetBytes(password);
        //    byte[] encrypted_bytes = sha1.ComputeHash(password_bytes);
        //    return Convert.ToBase64String(encrypted_bytes);
        //}
    }
}