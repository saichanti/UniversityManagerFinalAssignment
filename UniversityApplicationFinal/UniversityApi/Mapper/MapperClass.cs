using AutoMapper;

using UniversityApi.ViewModels;
using UniversityApplicationFinal.Models;
using UniversityClassLibrary.Model;

namespace UniversityApi.Mapper
{
    public class MapperClass:Profile
    {
        public MapperClass()
        {
            CreateMap<Users, UserViewModel>();
            CreateMap<UserViewModel, Users>();
            CreateMap<University,UniversityModel>();
           
        }
    }
}
