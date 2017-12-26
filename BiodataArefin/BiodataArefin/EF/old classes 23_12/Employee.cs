namespace BiodataArefin.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Employee
    {
        public int id { get; set; }

        [Required]
        [StringLength(5)]
        public string firstname { get; set; }

        [StringLength(10)]
        public string lastname { get; set; }

        [Column(TypeName = "money")]
        public decimal expected_salary { get; set; }

        public int religionId { get; set; }

        [Required]
        [StringLength(400)]
        [DataType(DataType.MultilineText)]
        public string address { get; set; }

        public bool gender { get; set; }

        public int mobileNo { get; set; }

        [Required]
        [StringLength(100)]
        public string email { get; set; }

        [DataType(DataType.DateTime)]
        public DateTime DOB { get; set; }

        [StringLength(100)]
        public string userId { get; set; }

      

        public virtual EmployeeDtl EmployeeDtl { get; set; }

       

        public virtual Religion_info Religion_info { get; set; }
    }
}
