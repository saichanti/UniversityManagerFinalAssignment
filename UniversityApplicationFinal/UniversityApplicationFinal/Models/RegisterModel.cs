using System.ComponentModel.DataAnnotations;

namespace UniversityApplicationFinal.Models
{
    public class RegisterModel
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage=" Enter Valid Email ")]
        public string Email { get; set; }
        [Required]
        public string PanNo { get; set; }
        [Required]
        [MaxLength(10), MinLength(8, ErrorMessage = "Password must 10 charcater Length")]
        public string Password { get; set; }
        [Required]
        [MaxLength(10), MinLength(8, ErrorMessage = "Password must 10 charcater Length")]
        public string ConfirmPassword { get; set; }
        public bool IsApproved { get; set; }
        public string Status { get; set; }
        public virtual int RoleId { get; set; }
    }
}
