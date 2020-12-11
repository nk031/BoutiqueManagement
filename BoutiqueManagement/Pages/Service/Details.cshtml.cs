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
    public class DetailsModel : PageModel
    {
        private readonly BoutiqueManagement.Data.BoutiqueManagementContext _context;

        public DetailsModel(BoutiqueManagement.Data.BoutiqueManagementContext context)
        {
            _context = context;
        }

        public Services Services { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Services = await _context.Services.FirstOrDefaultAsync(m => m.Service_ID == id);

            if (Services == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
