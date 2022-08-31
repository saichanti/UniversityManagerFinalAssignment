using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace UniversityApplicationFinal.Controllers
{
    public class UserMvcController : Controller
    {
        Uri baseuri = new Uri("https://localhost:7053/api/UserAPi");
        HttpClient client = new HttpClient();
        
        private readonly ILogger<AccountController> _logger;

        public UserMvcController(ILogger<AccountController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index()
        {
            client.BaseAddress = baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Get").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                var result = JsonConvert.DeserializeObject(data);
            }
            return View("Index");
            
        }

        
    }
}
