package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type TenantInfoReviewProcessSearch struct{
    Id  *int `json:"id" form:"id" `
    TenantId  *int `json:"tenantId" form:"tenantId" `
    StartCreatedAt  *time.Time  `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt  *time.Time  `json:"endCreatedAt" form:"endCreatedAt"`
    StartUpdatedAt  *time.Time  `json:"startUpdatedAt" form:"startUpdatedAt"`
    EndUpdatedAt  *time.Time  `json:"endUpdatedAt" form:"endUpdatedAt"`
    Process  string `json:"process" form:"process" `
    OptUser  *int `json:"optUser" form:"optUser" `
    request.PageInfo
}
