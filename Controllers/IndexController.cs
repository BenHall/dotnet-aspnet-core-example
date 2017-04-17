using Microsoft.AspNetCore.Mvc;

namespace dotnetapp
{
    [Route("/")]
    public class IndexController : Controller
    {
        [HttpGet]
        public IActionResult Get()
        {
            return new OkObjectResult("Request processed by " + System.Environment.MachineName);
        }
    }
}
