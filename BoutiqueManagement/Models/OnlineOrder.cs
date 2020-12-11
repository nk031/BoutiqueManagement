using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BoutiqueManagement.Models
{
    public class OnlineOrder
    {
        [Key]
        public int OnlineOrder_ID { get; set; } //Primery key for the Online Order table
        public string NewOrder { get; set; }//Dress name for order
        public string Purchaser_Name { get; set; }// client name who want to buy 
        public string Delivery_Address { get; set; }// address of delivery
        public DateTime Estimate_Delivery  { get; set; }// client want their order with in **** days

        //Foreign key
        public int Service_ID { get; set; }
        public Services Service_obj { get; set; }


    }
}
