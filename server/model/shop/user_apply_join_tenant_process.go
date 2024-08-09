// 自动生成模板UserApplyJoinTenantProcess
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// userApplyJoinTenantProcess表 结构体  UserApplyJoinTenantProcess
type UserApplyJoinTenantProcess struct {
    global.GVA_MODEL
    Desc  string `json:"desc" form:"desc" gorm:"column:desc;comment:操作原因;size:255;"`  //操作原因 
    OptUserId  *int `json:"optUserId" form:"optUserId" gorm:"column:opt_user_id;comment:操作者id;size:19;"`  //操作者id 
    Process  string `json:"process" form:"process" gorm:"column:process;comment:处理进度，字典定义： 0：提交申请，1通过申请，2拒绝申请;size:32;"`  //处理进度，字典定义： 0：提交申请，1通过申请，2拒绝申请 
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:租户id;size:19;"`  //租户id 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:用户id;size:19;"`  //用户id 
}


// TableName userApplyJoinTenantProcess表 UserApplyJoinTenantProcess自定义表名 user_apply_join_tenant_process
func (UserApplyJoinTenantProcess) TableName() string {
    return "user_apply_join_tenant_process"
}

