using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CakeWebManagement.models
{
    public class PaymentModel
    {
        public string token { get; set; }
        public string actionURl { get; set; }
        public decimal amount { get; set; }
    }
}