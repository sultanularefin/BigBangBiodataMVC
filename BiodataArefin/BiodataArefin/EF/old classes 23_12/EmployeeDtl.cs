namespace BiodataArefin.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class EmployeeDtl
    {
        public int id { get; set; }

        [Required]
        [StringLength(100)]
        public string examORDepartment { get; set; }

        [Required]
        [StringLength(200)]
        public string instituteUniBoard { get; set; }

        [Required]
        [StringLength(4)]
        public string passingYear { get; set; }

        public double grade { get; set; }

        public int empid { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
