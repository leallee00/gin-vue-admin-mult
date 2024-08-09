package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type UsersSearch struct{
    StartCreatedAt *time.Time `json:"startCreatedAt" form:"startCreatedAt"`
    EndCreatedAt   *time.Time `json:"endCreatedAt" form:"endCreatedAt"`
    Email  string `json:"email" form:"email" `
    NickName  string `json:"nickName" form:"nickName" `
    Phone  string `json:"phone" form:"phone" `
    Status  string `json:"status" form:"status" `
    Username  string `json:"username" form:"username" `
    Uuid  string `json:"uuid" form:"uuid" `
    request.PageInfo
}
