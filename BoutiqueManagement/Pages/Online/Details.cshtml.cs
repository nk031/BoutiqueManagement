using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BoutiqueManagement.Data;
using BoutiqueManagement.Models;

namespace BoutiqueManagement.Pages.Online
{
    public class DetailsModel : PageModel
    {
        private readonly BoutiqueManagement.Data.BoutiqueManagementContext _context;

        public DetailsModel(BoutiqueManagement.Data.BoutiqueManagementContext context)
        {
            _context = context;
        }

        public OnlineOrder OnlineOrder { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            OnlineOrder = await _context.OnlineOrder.FirstOrDefaultAsync(m => m.OnlineOrder_ID == id);

            if (OnlineOrder == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
