using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BoutiqueManagement.Models
{
    public class CustomerDetail
    {
        [Key]
        public int Customer_ID { get; set; } //Primery key for the Regular Customer table
        public string CustomerName { get; set; }// Customer Name 
        public string CustomerEmail { get; set; } //Customer email id
        public string CustomerMobile { get; set; }//Customer contact
        public string Purpose { get; set; }//purpose for visit
        public DateTime ArrivedDate { get; set; } // customer arrived date

        //Foreign key
        public int Staff_ID { get; set; }
        public Staff Staff_obj { get; set; }

    }
}
