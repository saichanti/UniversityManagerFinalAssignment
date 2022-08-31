using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniversityClassLibrary.Model
{
    public class University
    {
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "Varchar(50)")]
        public string UniversityName { get; set; }
        [Column(TypeName = "Varchar(50)")]
        public string Location { get; set; }
        [Column(TypeName = "Varchar(50)")]
        public string AffiliatedUnder { get; set; }
        public int EstablishedYear { get; set; }
    }
}
