using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BoutiqueManagement.Data;
using BoutiqueManagement.Models;

namespace BoutiqueManagement.Pages.Service
{
    public class IndexModel : PageModel
    {
        private readonly BoutiqueManagement.Data.BoutiqueManagementContext _context;

        public IndexModel(BoutiqueManagement.Data.BoutiqueManagementContext context)
        {
            _context = context;
        }

        public IList<Services> Services { get;set; }

        public async Task OnGetAsync()
        {
            Services = await _context.Services.ToListAsync();
        }
    }
}
