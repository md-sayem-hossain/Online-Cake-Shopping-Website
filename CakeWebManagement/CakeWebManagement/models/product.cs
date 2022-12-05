using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CakeWebManagement.models
{
    public class product
    {
       
        public int idP { get; set; }
        public double priceP { get; set; }
        public int qtyP { get; set; }
        public string desP { get; set; }
        public string labelP { get; set; }
        public string photopath { get; set; }
    }
}