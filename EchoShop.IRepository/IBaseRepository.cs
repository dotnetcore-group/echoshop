using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace EchoShop.IRepository
{
    /// <summary>
    /// 所有数据库操作的基类
    /// 基本增删改查方法
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IBaseRepository<T> where T : class, new()
    {
        IQueryable<T> LoadEntities(Expression<Func<T, bool>> where);

        IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int count, Expression<Func<T, bool>> where, Expression<Func<T, S>> orderBy, bool isAsc);

        bool DeleteEntity(T entity);

        bool DeleteEntitites(List<T> entities);

        bool EditEntity(T entity);

        T AddEntity(T entity);

        int SaveChanges();
    }
}
