using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BoutiqueManagement.Data;
using BoutiqueManagement.Models;

namespace BoutiqueManagement.Pages.Customers
{
    public class DeleteModel : PageModel
    {
        private readonly BoutiqueManagement.Data.BoutiqueManagementContext _context;

        public DeleteModel(BoutiqueManagement.Data.BoutiqueManagementContext context)
        {
            _context = context;
        }

        [BindProperty]
        public CustomerDetail CustomerDetail { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            CustomerDetail = await _context.CustomerDetail.FirstOrDefaultAsync(m => m.Customer_ID == id);

            if (CustomerDetail == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            CustomerDetail = await _context.CustomerDetail.FindAsync(id);

            if (CustomerDetail != null)
            {
                _context.CustomerDetail.Remove(CustomerDetail);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
