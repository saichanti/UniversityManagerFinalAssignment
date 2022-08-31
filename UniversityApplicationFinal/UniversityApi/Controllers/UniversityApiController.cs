using UniversityClassLibrary.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace UniversityApi.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class UniversityApiController : ControllerBase
    {
        private readonly UniversityDbContext _universityDbContext;

        public UniversityApiController(UniversityDbContext universityDbContext)
        {
            _universityDbContext = universityDbContext;
        }
        [HttpPost]
        public async Task<IActionResult> create(University university)
        {
            if (university == null)
            {
                return BadRequest("university  can't be Null");

            }
            if (_universityDbContext.Universities == null)
            {
                return NotFound("table not exist");
            }
            _universityDbContext.Universities.Add(university);
            await _universityDbContext.SaveChangesAsync();
            return Ok("added Successfully");
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            if (_universityDbContext.Universities == null)
            {
                return BadRequest("table not exist");
            }
            return Ok(_universityDbContext.Universities);
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetUniversity(int id)
        {
            if (id == null)
                return NotFound();
            else
            {
                var data = _universityDbContext.Universities.Where(a => a.Id == id).FirstOrDefault();
                return Ok(data);
            }
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> update(int id, University university)
        {
            if (id <= 0)
            {
                return NotFound("id not exist");
            }
            var orginalData = _universityDbContext.Universities.Where(a => a.Id == id).FirstOrDefault();
            orginalData.UniversityName = university.UniversityName;
            orginalData.AffiliatedUnder=university.AffiliatedUnder;
            orginalData.Location= university.Location;
            orginalData.EstablishedYear=university.EstablishedYear;
            
            if (orginalData == null)
            {
                return NotFound("data not Found");

            }
            _universityDbContext.Universities.Update(orginalData);
            _universityDbContext.SaveChanges();
            return Ok("Updated Successfully");
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            if (id <= 0)
            {
                return BadRequest("Id not exist");
            }
            var data = _universityDbContext.Universities.Where(e => e.Id == id).FirstOrDefault();
            if (data == null)
            {
                return NotFound();
            }
            _universityDbContext.Universities.Remove(data);
            _universityDbContext.SaveChanges();
            return Ok("  deleted Successfully");

        }
    }
}
