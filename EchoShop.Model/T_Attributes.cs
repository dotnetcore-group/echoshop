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
    
    public partial class T_Attributes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_Attributes()
        {
            this.T_AttrValue = new HashSet<T_AttrValue>();
            this.T_ProductAttr = new HashSet<T_ProductAttr>();
            this.T_OrderInfo = new HashSet<T_OrderInfo>();
        }
    
        public int AttrId { get; set; }
        public string AttrName { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_AttrValue> T_AttrValue { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ProductAttr> T_ProductAttr { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_OrderInfo> T_OrderInfo { get; set; }
        public virtual T_ShoppingCart T_ShoppingCart { get; set; }
    }
}
