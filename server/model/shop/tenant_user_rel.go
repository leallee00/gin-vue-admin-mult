// 自动生成模板TenantUserRel
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// tenantUserRel表 结构体  TenantUserRel
type TenantUserRel struct {
    global.GVA_MODEL
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:租户id;size:19;"`  //租户id 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:用户id;size:19;"`  //用户id 
}


// TableName tenantUserRel表 TenantUserRel自定义表名 tenant_user_rel
func (TenantUserRel) TableName() string {
    return "tenant_user_rel"
}

