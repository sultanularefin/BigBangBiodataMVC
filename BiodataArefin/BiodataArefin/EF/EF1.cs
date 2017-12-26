namespace BiodataArefin.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class EF1 : DbContext
    {
        public EF1()
            : base("name=DefaultConnection")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }

        public virtual DbSet<EmployeeDtl> EmployeeDtls { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Religion_info> Religion_info { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>()
                .Property(e => e.expected_salary)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Employee>()
                .Property(e => e.mobileNo)
                .IsUnicode(false);

            modelBuilder.Entity<Employee>()
                .HasMany(e => e.EmployeeDtls)
                .WithRequired(e => e.Employee)
                .HasForeignKey(e => e.empid)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Religion_info>()
                .HasMany(e => e.Employees)
                .WithRequired(e => e.Religion_info)
                .HasForeignKey(e => e.religionId)
                .WillCascadeOnDelete(false);
        }
    }
}
