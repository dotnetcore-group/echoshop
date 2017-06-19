using EchoShop.IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EchoShop.Mvc.Controllers
{
    public class ItemController : BaseController
    {
        public ItemController(IT_CategoryService service, IT_ProductsService prodService):base(service)
        {
            base.prodService = prodService;
        }
        // GET: Items
        public ActionResult List(int Id)
        {
            var products = prodService.LoadEntities(c => c.T_Category.F_Id == Id).ToList();
            return View();
        }
    }
}