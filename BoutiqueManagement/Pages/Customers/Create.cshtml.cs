﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BoutiqueManagement.Data;
using BoutiqueManagement.Models;

namespace BoutiqueManagement.Pages.Customers
{
    public class CreateModel : PageModel
    {
        private readonly BoutiqueManagement.Data.BoutiqueManagementContext _context;

        public CreateModel(BoutiqueManagement.Data.BoutiqueManagementContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public CustomerDetail CustomerDetail { get; set; }

        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.CustomerDetail.Add(CustomerDetail);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
