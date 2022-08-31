using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniversityClassLibrary.Model
{
    public class RoleMaster
    {
        [Key]
        public int RoleId { get; set; }
        public string RoleName { get; set; }
    }
}
