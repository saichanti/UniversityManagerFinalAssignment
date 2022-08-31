using AutoMapper;

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using UniversityApi.ViewModels;
using UniversityClassLibrary.Model;

namespace UniversityApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserAPiController : ControllerBase
    {
        private readonly IMapper _mapper;

        private readonly UniversityDbContext _universityDbContext;

        public UserAPiController(UniversityDbContext universityDbContext, IMapper mapper)
        {
            _universityDbContext = universityDbContext;
            _mapper = mapper;
        }
        [HttpGet("Get")]
        public async Task<IActionResult> Get()
        {
            if (_universityDbContext.users == null)
            {
                return BadRequest("table not exist");
            }
            var filterusers = _universityDbContext.users.Where(x => x.RoleId == 2 && x.IsApproved == false && x.Status == "Pending").ToList();
            var result = _mapper.Map<List<Users>, List<UserViewModel>>(filterusers);
            return Ok(result);
        }
        [HttpPost("CreateUser")]
        public async Task<IActionResult> CreateUser(UserViewModel userViewModel)
        {
            if (userViewModel == null)
            {
                return BadRequest("userViewModel can't be null");

            }
            if (_universityDbContext.users == null)
            {
                return NotFound("table not exist");
            }
            var postObj = _mapper.Map<UserViewModel, Users>(userViewModel);
            postObj.Status = "Pending";
            postObj.IsApproved = false;
            postObj.RoleId = 2;
            _universityDbContext.users.Add(postObj);
            await _universityDbContext.SaveChangesAsync();
            return Ok("added Successfully");
        }
        [HttpGet("UserStatus")]
        public async Task<IActionResult> UserStatus(int id, bool isApprove)
        {
            if (_universityDbContext.users == null)
            {
                return BadRequest("table not exist");
            }
            var filterusers = _universityDbContext.users.Where(x => x.Id == id).FirstOrDefault();
            if (isApprove)
            {
                filterusers.IsApproved = true;
                filterusers.Status = "Approved";
            }
            else
            {
                filterusers.IsApproved = false;
                filterusers.Status = "rejected";

            }
            _universityDbContext.SaveChanges();
            return Ok("Updated ");
        }

        
     
        [HttpGet("GetRegisterUsers")]
        public async Task<IActionResult> GetRegisterUsers()
        {
            if (_universityDbContext == null)
            {
                return BadRequest("Users not present");
            }
            return Ok(_universityDbContext.users);
        }
    }
}
