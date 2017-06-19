using System;
using System.Data.Entity;
using System.Runtime.Remoting.Messaging;
using EchoShop.Model;

namespace EchoShop.Repository
{
    /// <summary>
    /// 数据上下文创建工厂
    /// 保证数据上下文线程内唯一
    /// </summary>
    public class DBContextFactory
    {
        const string ContextName = "dbContext";

        /// <summary>
        /// 获取EF上下文实例
        /// 线程内唯一
        /// </summary>
        /// <returns></returns>
        public static DbContext CreateDbContext()
        {
            DbContext context = CallContext.GetData(ContextName) as DbContext;
            if (context == null)
            {
                context = new EchoShopModelContainer();
                CallContext.SetData(ContextName, context);
            }
            return context;
        }
    }
}