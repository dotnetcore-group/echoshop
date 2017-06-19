using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using EchoShop.Model;
using EchoShop.IServices;

namespace EchoShop.Mvc
{
    public class BaseController : Controller
    {
        protected IT_CategoryService cateService;
        protected IT_ProductsService prodService;
        public BaseController(IT_CategoryService cateService)
        {
            ViewData["Categories"] = cateService.LoadEntities(c => true).ToList();
        }
    }
}