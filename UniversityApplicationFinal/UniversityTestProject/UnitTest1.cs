
using System.Collections.Generic;
using UniversityApi.ViewModels;
using UniversityClassLibrary.Model;

namespace Test
{
    public class UnitTest1
    {
        private readonly UniversityDbContext _universityDbContext;

        public UnitTest1(UniversityDbContext universityDbContext)
        {
            _universityDbContext = universityDbContext;
            
        }
        List<UserViewModel> userViewModels = new List<UserViewModel>();
     
    }
}