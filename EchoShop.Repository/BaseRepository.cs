using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace EchoShop.Repository
{
    /// <summary>
    /// /// <summary>
    /// 数据库操作基本实现
    /// </summary>
    /// </summary>
    /// <typeparam name="T">实体</typeparam>
    public class BaseRepository<T> where T : class, new()
    {
        readonly DbContext db = DBContextFactory.CreateDbContext();

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public T AddEntity(T entity)
        {
            db.Set<T>().Add(entity);
            return entity;
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entities">实体集合</param>
        /// <returns></returns>
        public bool DeleteEntitites(List<T> entities)
        {
            foreach (var entity in entities)
            {
                db.Entry<T>(entity).State = EntityState.Deleted;
            }
            //return db.SaveChanges() > 0;
            return true;
        }

        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public bool DeleteEntity(T entity)
        {
            db.Entry<T>(entity).State = System.Data.Entity.EntityState.Deleted;
            return true;
            //return db.SaveChanges() > 0;
        }

        /// <summary>
        /// 更新
        /// </summary>
        /// <param name="entity">实体</param>
        /// <returns></returns>
        public bool EditEntity(T entity)
        {
            db.Entry<T>(entity).State = System.Data.Entity.EntityState.Modified;
            //return db.SaveChanges() > 0;
            return true;
        }

        /// <summary>
        /// 查询数据
        /// </summary>
        /// <param name="where">查询条件</param>
        /// <returns></returns>
        public IQueryable<T> LoadEntities(Expression<Func<T, bool>> where)
        {
            return db.Set<T>().Where(where);
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
            var entities = db.Set<T>().Where(where);
            count = entities.Count();
            if (isAsc)
            {
                return entities.OrderBy(orderBy).Skip<T>(pageSize * (pageIndex - 1)).Take<T>(pageSize);
            }
            return entities.OrderByDescending(orderBy).Skip<T>(pageSize * (pageIndex - 1)).Take<T>(pageSize);
        }

        /// <summary>
        /// 统一保存
        /// </summary>
        /// <returns></returns>
        public int SaveChanges()
        {
            return db.SaveChanges();
        }
    }
}
