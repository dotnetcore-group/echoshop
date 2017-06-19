using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using EchoShop.IRepository;

namespace EchoShop.Services
{
    /// <summary>
    /// 业务逻辑类的基类
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class BaseService<T> where T : class, new()
    {
        //1.0 定义数据仓储的接口
        public IBaseRepository<T> baseDal;

        /// <summary>
        /// 创建数据会话实例
        /// </summary>

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public T AddEntity(T entity)
        {
            return baseDal.AddEntity(entity);

        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entities">实体集合</param>
        /// <returns></returns>
        public bool DeleteEntitites(List<T> entities)
        {
            return baseDal.DeleteEntitites(entities);
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public bool DeleteEntity(T entity)
        {
            return baseDal.DeleteEntity(entity);
        }

        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public bool EditEntity(T entity)
        {
            return baseDal.EditEntity(entity);
        }

        /// <summary>
        /// 查询数据
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns></returns>
        public IQueryable<T> LoadEntities(Expression<Func<T, bool>> where)
        {
            return baseDal.LoadEntities(where);
        }

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
        public IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int count, Expression<Func<T, bool>> where, Expression<Func<T, S>> orderBy, bool isAsc)
        {
            return baseDal.LoadPageEntities<S>(pageIndex, pageSize, out count, where, orderBy, isAsc);
        }

        public int SaveChanges()
        {
            return baseDal.SaveChanges();
        }
    }
}
