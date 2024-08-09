// 自动生成模板UserApplyJoinTenantProcessFlow
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// userApplyJoinTenantProcessFlow表 结构体  UserApplyJoinTenantProcessFlow
type UserApplyJoinTenantProcessFlow struct {
    global.GVA_MODEL
    ApplyId  *int `json:"applyId" form:"applyId" gorm:"column:apply_id;comment:申请id;size:19;"`  //申请id 
    Desc  string `json:"desc" form:"desc" gorm:"column:desc;comment:操作原因;size:255;"`  //操作原因 
    OptUserId  *int `json:"optUserId" form:"optUserId" gorm:"column:opt_user_id;comment:操作者id;size:19;"`  //操作者id 
    Process  string `json:"process" form:"process" gorm:"column:process;comment:;size:32;"`  //process字段 
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:租户id;size:19;"`  //租户id 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:用户id;size:19;"`  //用户id 
}


// TableName userApplyJoinTenantProcessFlow表 UserApplyJoinTenantProcessFlow自定义表名 user_apply_join_tenant_process_flow
func (UserApplyJoinTenantProcessFlow) TableName() string {
    return "user_apply_join_tenant_process_flow"
}

