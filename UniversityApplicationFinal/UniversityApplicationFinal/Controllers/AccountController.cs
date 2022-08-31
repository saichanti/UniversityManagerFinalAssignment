using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using UniversityApplicationFinal.Models;
using UniversityApplicationFinal.MailSend;


namespace UniversityApplicationFinal.Controllers;

public class AccountController : Controller
{
    Uri baseuri = new Uri("https://localhost:7053/api/Account");
    HttpClient client = new HttpClient();

    private readonly ISession _session;



    private readonly ILogger<AccountController> _logger;

    public AccountController(ILogger<AccountController> logger, IHttpContextAccessor httpContextAccessor)
    {
        _logger = logger;
        _session = httpContextAccessor.HttpContext.Session;
    }

    [HttpGet]
    public IActionResult Login()
    {
        return View();
    }
    [HttpPost]
    public IActionResult Login(LoginModel loginModel)
    {
        using (var client = new HttpClient())
        {
            var postData = client.PostAsJsonAsync(baseuri + "/Login", loginModel);
            postData.Wait();
            var result = postData.Result;
            string data = result.Content.ReadAsStringAsync().Result;
            if (data == "User not approved.")
            {
                return RedirectToAction("status", "Account");
            }
            if (result.IsSuccessStatusCode)
            {

                var user = JsonConvert.DeserializeObject<RegisterModel>(data);
                this._session.SetString("userEmail", user != null ? user.Email : "");

                if (user != null && user.RoleId == 1)
                {
                    return RedirectToAction("AdminPage");
                }
                else if (user.RoleId == 2)
                {
                    return RedirectToAction("Index", "University");
                }

            }
            ModelState.AddModelError(string.Empty, "server error");
            return View(result);
        }
    }
    [HttpGet]
    public IActionResult Register()
    {
        return View();
    }
    [HttpPost]
    public IActionResult Register(RegisterModel registerModel)
    {
        registerModel.Status = string.Empty;
        var baseurl = new Uri("https://localhost:7053/api/UserAPi");
        using (var client = new HttpClient())
        {
            var postData = client.PostAsJsonAsync(baseurl + "/CreateUser", registerModel);
            postData.Wait();
            var result = postData.Result;
            string data = result.Content.ReadAsStringAsync().Result;
            if (result.IsSuccessStatusCode)
            {
                MailClass mail = new MailClass();
                mail.SendMailMethod(registerModel.Email, "https://localhost:7054/");
                return RedirectToAction("Login");
            }
            ModelState.AddModelError(string.Empty, "server error");
            return View(result);
        }
    }

    [HttpGet]
    public IActionResult AdminPage()
    {
        List<RegisterModel> users = new List<RegisterModel>();
        Uri baseuri = new Uri("https://localhost:7053/api/UserAPi");
        HttpClient client = new HttpClient();
        client.BaseAddress = baseuri;
        HttpResponseMessage response = client.GetAsync(baseuri + "/Get").Result;
        if (response.IsSuccessStatusCode)
        {
            string data = response.Content.ReadAsStringAsync().Result;
            users = JsonConvert.DeserializeObject<List<RegisterModel>>(data);
        }
        return View(users);
    }
    [HttpPost]
    public IActionResult Approved(RegisterModel registerModel)
    {
        var baseurl = new Uri("https://localhost:7053/api/UserAPi");
        using (var client = new HttpClient())
        {
            var postData = client.PostAsJsonAsync(baseurl + "/CreateUser", registerModel);
            postData.Wait();
            var result = postData.Result;
            string data = result.Content.ReadAsStringAsync().Result;

            if (result.IsSuccessStatusCode)
            {
                return RedirectToAction("Login");
            }
            ModelState.AddModelError(string.Empty, "server error");
            return View(result);
        }
    }
    [HttpGet]
    public IActionResult EmailAvailable(string email)
    {
        if (email == null)
        {
            return Json("Enter the email");
        }
        List<RegisterModel> users = new List<RegisterModel>();
        Uri baseuri = new Uri("https://localhost:7053/api/UserAPi");
        HttpClient client = new HttpClient();
        client.BaseAddress = baseuri;
        HttpResponseMessage response = client.GetAsync(baseuri + "/GetRegisterUsers").Result;
        if (response.IsSuccessStatusCode)
        {
            string data = response.Content.ReadAsStringAsync().Result;
            users = JsonConvert.DeserializeObject<List<RegisterModel>>(data);
            if (users == null)
            {
                return NoContent();
            }
            foreach (var user in users)
            {
                if (StringComparer.CurrentCultureIgnoreCase.Equals(user.Email, email))
                {
                    return Json("Email Already Exists Try New Email");
                }
            }
            return Json("");
        }

        return View(users);


    }

    public IActionResult status()
    {
        return View();
    }
}
