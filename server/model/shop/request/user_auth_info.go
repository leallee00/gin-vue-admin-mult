package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type UserAuthInfoSearch struct{
    StartCreatedAt *time.Time `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt   *time.Time `json:"endCreatedAt" form:"endCreatedAt"`
    EmergencyContactName  string `json:"emergencyContactName" form:"emergencyContactName" `
    EmergencyContactPhone  string `json:"emergencyContactPhone" form:"emergencyContactPhone" `
    IdCardNo  string `json:"idCardNo" form:"idCardNo" `
    UserId  *int `json:"userId" form:"userId" `
    request.PageInfo
}
