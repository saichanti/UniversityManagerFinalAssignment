using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using UniversityApplicationFinal.Models;

namespace UniversityApplicationFinal.Controllers
{
    public class UniversityController : Controller
    {
        Uri baseuri = new Uri("https://localhost:7053/api/UniversityApi");
        HttpClient client = new HttpClient();
        List<UniversityModel> universityModels = new List<UniversityModel>();
        public IActionResult Index()
        {
            client.BaseAddress = baseuri;
            HttpResponseMessage response= client.GetAsync(baseuri+"/Get").Result;
            if (response.IsSuccessStatusCode)
            {
                string data=response.Content.ReadAsStringAsync().Result;
                universityModels = JsonConvert.DeserializeObject<List<UniversityModel>>(data);
                universityModels = universityModels.OrderBy(x => x.EstablishedYear).ThenBy(x => x.UniversityName).ToList();
            }
            return View(universityModels);
        }

        public IActionResult Create()
        {
            return View();
        }
        public IActionResult Add(UniversityModel universityModel)
        {
            using (var client = new HttpClient())
            {
                var postData = client.PostAsJsonAsync<UniversityModel>(baseuri + "/create", universityModel);
                postData.Wait();
                var result = postData.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
                ModelState.AddModelError(string.Empty, "server error");
                return View(result);
            }
        }
        public async Task<IActionResult> Save(UniversityModel universityModel)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                var put = client.PutAsJsonAsync<UniversityModel>(baseuri + $"/update/{universityModel.Id}", universityModel);
                put.Wait();
                var result = put.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }

                ModelState.AddModelError(string.Empty, "server error");
            }
            return View(universityModel);
        }
        public IActionResult Edit(int id)
        {
            client.BaseAddress=baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Get").Result;
            string orginalData = response.Content.ReadAsStringAsync().Result;
            universityModels = JsonConvert.DeserializeObject<List<UniversityModel>>(orginalData);
            var data = universityModels.Where(e=>e.Id==id).FirstOrDefault();
            return View(data);
        }
       

        public IActionResult Details(int id)
        {
            client.BaseAddress = baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Get").Result;
            string orginalData = response.Content.ReadAsStringAsync().Result;
            universityModels = JsonConvert.DeserializeObject<List<UniversityModel>>(orginalData);
            var data = universityModels.Where(e => e.Id == id).FirstOrDefault();
            return View(data);
        }
        public async Task<IActionResult> Delete(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = baseuri;
                var delete = client.DeleteAsync(baseuri+$"/Delete/{id}");
                delete.Wait();
                var result = delete.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
            }
            ModelState.AddModelError(string.Empty, "server error");
            return View();
        }
        [HttpGet]
        public IActionResult UniversityAvailable(string university)
        {
            if (university == null)
            {
                return Json("Enter the university");
            }
            List<UniversityModel> universityModels = new List<UniversityModel>();
            client.BaseAddress = baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Get").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                universityModels = JsonConvert.DeserializeObject<List<UniversityModel>>(data);
                if (universityModels == null)
                {
                    return NoContent();
                }
                foreach (var user in universityModels)
                {
                    if (StringComparer.CurrentCultureIgnoreCase.Equals(user.UniversityName, university))
                    {
                        return Json("university Already Exists Try New universityName");
                    }
                }
                return Json("university Accepted");
            }

            return View(universityModels);


        }
    }
    
}
