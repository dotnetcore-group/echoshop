using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EchoShop.Common;
using EchoShop.IServices;
using EchoShop.Model;

namespace EchoShop.Mvc.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController(IT_CategoryService service):base(service)
        {
        }

        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
    }
}