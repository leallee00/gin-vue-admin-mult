package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	
)

type AuthSearch struct{
    Service  string `json:"service" form:"service" `
    UserId  *int `json:"userId" form:"userId" `
    request.PageInfo
}
