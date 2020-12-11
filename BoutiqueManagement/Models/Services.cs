using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BoutiqueManagement.Models
{
    public class Services
    {
        [Key]
        public int Service_ID { get; set; } //Primery key for the Services table
        public string DressName { get; set; }//selling stock dress name
        public string Price { get; set; }//price of each dress
        public string Size { get; set; }// size for each dress
        public string DressId { get; set; } //dress id
        public string Item { get; set; } //avalible item in stock
        //Foreign key
        public int Customer_ID { get; set; }
        public CustomerDetail Customer_obj { get; set; }
    }
}
