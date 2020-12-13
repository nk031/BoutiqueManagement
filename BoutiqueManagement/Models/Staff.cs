using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BoutiqueManagement.Models
{
    public class Staff
    {
        [Key]
        public int Staff_ID { get; set; } //Primery key for the Staff table
        public string StaffName { get; set; } // Staff Name on Shifts
        public string StaffEmail { get; set; }// Staff Email 
        public string StaffMobile { get; set; }// Staff Mobile 
        public string Address { get; set; }//Address of staff member

        [DataType(DataType.Date)]
        public DateTime JionningDate { get; set; } //when they join this job
        
         [DataType(DataType.Date)]
        public DateTime Visa_Finshing_Date { get; set; }// visa deatil for working eligibility


    }
}
