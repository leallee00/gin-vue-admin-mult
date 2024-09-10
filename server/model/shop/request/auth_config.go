package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	
)

type AuthConfigSearch struct{
    Service  string `json:"service" form:"service" `
    request.PageInfo
    Sort  string `json:"sort" form:"sort"`
    Order string `json:"order" form:"order"`
}
