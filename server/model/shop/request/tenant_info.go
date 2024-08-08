package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type TenantInfoSearch struct{
    Id  *int `json:"id" form:"id" `
    TenantId  *int `json:"tenantId" form:"tenantId" `
    StartCreatedAt  *time.Time  `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt  *time.Time  `json:"endCreatedAt" form:"endCreatedAt"`
    StartUpdatedAt  *time.Time  `json:"startUpdatedAt" form:"startUpdatedAt"`
    EndUpdatedAt  *time.Time  `json:"endUpdatedAt" form:"endUpdatedAt"`
    Liaison  string `json:"liaison" form:"liaison" `
    Phone  string `json:"phone" form:"phone" `
    Email  string `json:"email" form:"email" `
    OwnerName  string `json:"ownerName" form:"ownerName" `
    OwnerCode  string `json:"ownerCode" form:"ownerCode" `
    OwnerPhone  string `json:"ownerPhone" form:"ownerPhone" `
    QualOrgLegal  string `json:"qualOrgLegal" form:"qualOrgLegal" `
    QualOrgName  string `json:"qualOrgName" form:"qualOrgName" `
    QualOrgAddr  string `json:"qualOrgAddr" form:"qualOrgAddr" `
    StartQualOrgExpireTime  *time.Time  `json:"startQualOrgExpireTime" form:"startQualOrgExpireTime"`
    EndQualOrgExpireTime  *time.Time  `json:"endQualOrgExpireTime" form:"endQualOrgExpireTime"`
    QualSocialCode  string `json:"qualSocialCode" form:"qualSocialCode" `
    request.PageInfo
}
