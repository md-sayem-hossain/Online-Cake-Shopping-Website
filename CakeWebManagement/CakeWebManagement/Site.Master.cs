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
    public partial class SiteMaster : MasterPage
    {
        string strcon = ConfigurationManager.ConnectionStrings["CakeDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        
       
    }
}