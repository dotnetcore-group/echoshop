using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;
using Autofac;
using Autofac.Integration.Mvc;

namespace EchoShop.Mvc
{
    public class AutofacConfig
    {
        public static void Register()
        {
            //1.0 实例化一个autofac的创建容器
            var builder = new ContainerBuilder();

            //2.0 告诉Autofac框架，将来要创建的控制器类存放在哪个程序集 (itcast.CRM15.Site)
            Assembly controllerAss = Assembly.Load("EchoShop.Mvc");
            builder.RegisterControllers(controllerAss);

            //3.0 告诉autofac框架注册数据仓储层所在程序集中的所有类的对象实例
            Assembly respAss = Assembly.Load("EchoShop.Repository");
            //创建respAss中的所有类的instance以此类的实现接口存储
            builder.RegisterTypes(respAss.GetTypes()).AsImplementedInterfaces();//.InstancePerHttpRequest();

            //4.0 告诉autofac框架注册业务逻辑层所在程序集中的所有类的对象实例
            Assembly serAss = Assembly.Load("EchoShop.Services");
            //创建serAss中的所有类的instance以此类的实现接口存储
            builder.RegisterTypes(serAss.GetTypes()).AsImplementedInterfaces();//.InstancePerHttpRequest();
            //builder.RegisterType(typeof(sysFunctionServices)).As(typeof(IsysFunctionServices));

            //5.0 创建一个Autofac的容器
            var container = builder.Build();

            //5.0.1 将container对象缓存到HttpRuntime.cache中，并且是永久有效
            //CacheMgr.SetData(Keys.AutofacContainer, container);

            //Resolve方法可以从autofac容器中获取指定的IsysuserInfoSercies的具体实现类的实体对象
            //container.Resolve<IsysuserInfoSercies>();

            // 6.0 将MVC的控制器对象实例 交由autofac来创建
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
        }
    }
}