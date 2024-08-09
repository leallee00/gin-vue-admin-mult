// 自动生成模板TenantInviteUserProcessLog
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// tenantInviteUserProcessLog表 结构体  TenantInviteUserProcessLog
type TenantInviteUserProcessLog struct {
    global.GVA_MODEL
    Desc  string `json:"desc" form:"desc" gorm:"column:desc;comment:操作原因;size:255;"`  //操作原因 
    InviteId  *int `json:"inviteId" form:"inviteId" gorm:"column:invite_id;comment:申请id;size:19;"`  //申请id 
    OptUserId  *int `json:"optUserId" form:"optUserId" gorm:"column:opt_user_id;comment:操作者id;size:19;"`  //操作者id 
    Process  string `json:"process" form:"process" gorm:"column:process;comment:处理进度;size:32;"`  //处理进度 
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:租户id;size:19;"`  //租户id 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:用户id;size:19;"`  //用户id 
}


// TableName tenantInviteUserProcessLog表 TenantInviteUserProcessLog自定义表名 tenant_invite_user_process_log
func (TenantInviteUserProcessLog) TableName() string {
    return "tenant_invite_user_process_log"
}

