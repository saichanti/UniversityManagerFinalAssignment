using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniversityClassLibrary.Model
{
    public class Users
    {
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "Varchar(50)")]
        public string Email { get; set; }=String.Empty;
        [Column(TypeName = "Varchar(15)")]
        public string PanNo { get; set; } = String.Empty;
        [Column(TypeName = "Varchar(20)")]
        public string Password { get; set; } = String.Empty;
        [Column(TypeName = "Varchar(20)")]
        public string ConfirmPassword { get; set; } = String.Empty;
        public bool IsApproved { get; set; }
        [Column(TypeName = "Varchar(20)")]
        public string Status { get; set; } = String.Empty;

        [ForeignKey("roleMasters")]
        public virtual int RoleId { get; set; }

    }
}
