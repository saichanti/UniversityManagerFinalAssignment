using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using UniversityApplicationFinal.Models;

namespace UniversityApplicationFinal.Data;

public class ApplicationDbContext : IdentityDbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }
    public DbSet<UniversityApplicationFinal.Models.UniversityModel>? UniversityModel { get; set; }
    public DbSet<UniversityApplicationFinal.Models.RegisterModel>? RegisterModel { get; set; }
}
