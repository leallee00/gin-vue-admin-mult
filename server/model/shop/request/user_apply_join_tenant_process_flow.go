package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type UserApplyJoinTenantProcessFlowSearch struct{
    StartCreatedAt *time.Time `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt   *time.Time `json:"endCreatedAt" form:"endCreatedAt"`
    ApplyId  *int `json:"applyId" form:"applyId" `
    Desc  string `json:"desc" form:"desc" `
    OptUserId  *int `json:"optUserId" form:"optUserId" `
    Process  string `json:"process" form:"process" `
    TenantId  *int `json:"tenantId" form:"tenantId" `
    UserId  *int `json:"userId" form:"userId" `
    request.PageInfo
}
