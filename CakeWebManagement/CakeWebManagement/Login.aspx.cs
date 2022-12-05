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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingCartDBConnectionString"].ConnectionString);
        int temp = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string checkUser = "select count(*) from UserTable where email='" + email.Text +
                    "' and password='" + pass.Text + "'";
                SqlCommand com = new SqlCommand(checkUser, con);
                temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                Session["Name"] = email.Text.ToString();
                Session["p"] = pass.Text;
                if (temp == 1)
                {
                    Response.Write("login successful");
                    Response.Redirect("default.aspx");
                }
                else
                {
                    
                    Response.Write("invalid user");
                }


            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
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
