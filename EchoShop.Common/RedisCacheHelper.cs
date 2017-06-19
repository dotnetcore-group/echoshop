using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServiceStack.Redis;

namespace EchoShop.Common
{
    public class RedisCacheHelper
    {
        static IRedisClientCacheManager clientManager;
        static IRedisClient client;

        static RedisCacheHelper()
        {
            clientManager = new PooledRedisClientManager(new string[] { "127.0.0.1:6379" });
            client = clientManager.GetClient();
        }

        public static bool Set<T>(string key, T value)
        {
            return client.Add(key, value);
        }

        public static T Get<T>(string key)
        {
            return client.Get<T>(key);
        }

        public static bool Exist(string key)
        {
            return client.ContainsKey(key);
        }
    }
}
