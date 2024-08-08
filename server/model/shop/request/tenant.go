package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type TenantSearch struct{
    Id  *int `json:"id" form:"id" `
    StartCreatedAt  *time.Time  `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt  *time.Time  `json:"endCreatedAt" form:"endCreatedAt"`
    StartUpdatedAt  *time.Time  `json:"startUpdatedAt" form:"startUpdatedAt"`
    EndUpdatedAt  *time.Time  `json:"endUpdatedAt" form:"endUpdatedAt"`
    Uuid  string `json:"uuid" form:"uuid" `
    TenantName  string `json:"tenantName" form:"tenantName" `
    Status  string `json:"status" form:"status" `
    request.PageInfo
    Sort  string `json:"sort" form:"sort"`
    Order string `json:"order" form:"order"`
}
