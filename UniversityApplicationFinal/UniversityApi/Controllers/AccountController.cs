using AutoMapper;

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using UniversityApi.ViewModels;
using UniversityClassLibrary.Model;


namespace UniversityApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly IMapper _mapper;

        private readonly UniversityDbContext _universityDbContext;

        public AccountController(UniversityDbContext universityDbContext, IMapper mapper)
        {
            _universityDbContext = universityDbContext;
            _mapper = mapper;
        }
        [HttpPost("Login")]
        public async Task<IActionResult> Login(LoginViewModel loginModel)
        {
            if (_universityDbContext.users == null)
            {
                return BadRequest("table doesn't exist");
            }
            var user=_universityDbContext.users.Where(x=>x.Email== loginModel.Email && x.Password== loginModel.Password).FirstOrDefault();
            if (user == null)
            {
                return BadRequest("username or password not Match");
            }
            if (!user.IsApproved)
            {
                return BadRequest("User not approved.");
            }
            var result=_mapper.Map<Users,UserViewModel>(user);
            return Ok(result);
           
        }
        

    }
}
