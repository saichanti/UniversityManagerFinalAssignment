
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniversityClassLibrary.Model
{
    public class UniversityDbContext:DbContext
    {
        public UniversityDbContext()
        {

        }
        public UniversityDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=DESKTOP-70LPGGG\MSSQLSERVER01;Database=UniversityDataBase;Trusted_Connection=True;");
        }
        public DbSet<University> Universities { get; set; }
        public DbSet<RoleMaster> roleMasters { get; set; }
        public DbSet<Users> users { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<University>()
                .HasIndex(x => x.UniversityName)
                .IsUnique();
        }

    }
}
