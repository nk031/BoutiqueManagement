using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using BoutiqueManagement.Models;

namespace BoutiqueManagement.Data
{
    public class BoutiqueManagementContext : DbContext
    {
        public BoutiqueManagementContext (DbContextOptions<BoutiqueManagementContext> options)
            : base(options)
        {
        }

        public DbSet<BoutiqueManagement.Models.Staff> Staff { get; set; }

        public DbSet<BoutiqueManagement.Models.CustomerDetail> CustomerDetail { get; set; }

        public DbSet<BoutiqueManagement.Models.Services> Services { get; set; }

        public DbSet<BoutiqueManagement.Models.OnlineOrder> OnlineOrder { get; set; }
    }
}
