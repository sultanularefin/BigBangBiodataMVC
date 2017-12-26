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
        [StringLength(10)]
        [MinLength(5, ErrorMessage = "First Name should not be less than 5 characters long")]
        [MaxLength(10, ErrorMessage = "First Name should not be greater than 10 characters long")]
        public string firstname { get; set; }

        [StringLength(100)]
        public string lastname { get; set; }

        [Column(TypeName = "money")]
        public decimal expected_salary { get; set; }

        public int religionId { get; set; }

        [Required]
        [StringLength(400)]
        public string address { get; set; }
		
		
		
		

        public bool gender { get; set; }
		

        [Required]
        [StringLength(11)]
        [RegularExpression("^[0-9]{11}$", ErrorMessage = "Invalid Phone Number; use 11 digits 1-9")]
       
        public string mobileNo { get; set; }

     

        [Required]
        [StringLength(100)]
        public string email { get; set; }

        [StringLength(100)]
        public string userId { get; set; }

        [DataType(DataType.DateTime)]
        public DateTime? DOB { get; set; }

        public virtual EmployeeDtl EmployeeDtl { get; set; }

        public virtual Religion_info Religion_info { get; set; }
    }
}
