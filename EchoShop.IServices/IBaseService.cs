using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace EchoShop.IServices
{
    public interface IBaseService<T> where T : class, new()
    {
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        T AddEntity(T entity);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entities">实体集合</param>
        /// <returns></returns>
        bool DeleteEntitites(List<T> entities);

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        bool DeleteEntity(T entity);

        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        bool EditEntity(T entity);

        /// <summary>
        /// 查询数据
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns></returns>
        IQueryable<T> LoadEntities(Expression<Func<T, bool>> where);

        /// <summary>
        /// 查询分页数据
        /// </summary>
        /// <typeparam name="S">排序字段</typeparam>
        /// <param name="pageIndex">当前页</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="count">总数据量</param>
        /// <param name="where">查询条件</param>
        /// <param name="orderBy">排序条件</param>
        /// <param name="isAsc">是否为升序 true 为升序 false 为降序</param>
        /// <returns></returns>
        IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int count, Expression<Func<T, bool>> where, Expression<Func<T, S>> orderBy, bool isAsc);

        int SaveChanges();
    }
}
