namespace UniversityApi.ViewModels
{
    public class UserViewModel
    {
        public int Id { get; set; }
        public string Email { get; set; } = String.Empty;
        public string PanNo { get; set; } = String.Empty;
        public string Password { get; set; } = String.Empty;
        public string ConfirmPassword { get; set; } = String.Empty;
        public virtual int RoleId { get; set; }
        public bool IsApproved { get; set; }

        public string Status { get; set; } = String.Empty;
      
    }
}
