using System.ComponentModel.DataAnnotations;

namespace UniversityApplicationFinal.Models
{
    public class UniversityModel
    {
        public int Id { get; set; }
        [MaxLength(50)]
        public string UniversityName { get; set; }=String.Empty;
        [MaxLength(50)]
       
        public string Location { get; set; } = String.Empty;
        [MaxLength(50)]
        public string AffiliatedUnder { get; set; } = String.Empty;
        public int EstablishedYear { get; set; } 
    }
}
