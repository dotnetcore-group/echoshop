//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace EchoShop.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_Products()
        {
            this.F_OriginalPrice = 0F;
            this.F_PresentPrice = 0F;
            this.F_IsNew = false;
            this.F_IsHot = false;
            this.T_OrderInfo = new HashSet<T_OrderInfo>();
            this.T_ProductAttr = new HashSet<T_ProductAttr>();
            this.T_Favorites = new HashSet<T_Favorites>();
            this.T_ShoppingCart = new HashSet<T_ShoppingCart>();
        }
    
        public int F_Id { get; set; }
        public string F_Name { get; set; }
        public string F_Desc { get; set; }
        public float F_OriginalPrice { get; set; }
        public float F_PresentPrice { get; set; }
        public bool F_IsNew { get; set; }
        public bool F_IsHot { get; set; }
        public string F_Img { get; set; }
        public Nullable<System.DateTime> F_AddDate { get; set; }
    
        public virtual T_Category T_Category { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_OrderInfo> T_OrderInfo { get; set; }
        public virtual T_Brand T_Brand { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ProductAttr> T_ProductAttr { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_Favorites> T_Favorites { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ShoppingCart> T_ShoppingCart { get; set; }
    }
}
