namespace BiodataArefin.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

	[Serializable]
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
        [RegularExpression(@"^(\d{4})$", ErrorMessage = "Enter a valid 4 digit Year")]
        [Display(Name = "Passing Year")]
        public short passingYear { get; set; }

        [Required]
        [StringLength(50)]
        public string grade { get; set; }


        public int empid { get; set; }

        public virtual Employee Employee { get; set; }
    }
}
