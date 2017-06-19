using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EchoShop.Mvc.Controllers
{
    public class ItemController : Controller
    {
        // GET: Items
        public ActionResult List(int Id)
        {
            
            return View();
        }
    }
}