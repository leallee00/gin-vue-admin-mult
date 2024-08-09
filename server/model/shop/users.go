// 自动生成模板Users
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// users表 结构体  Users
type Users struct {
    global.GVA_MODEL
    Avatar  string `json:"avatar" form:"avatar" gorm:"column:avatar;comment:用户头像;size:191;"`  //用户头像 
    Email  string `json:"email" form:"email" gorm:"column:email;comment:用户邮箱;size:191;"`  //用户邮箱 
    NickName  string `json:"nickName" form:"nickName" gorm:"column:nick_name;comment:用户昵称;size:191;"`  //用户昵称 
    Password  string `json:"password" form:"password" gorm:"column:password;comment:用户登录密码;size:191;"`  //用户登录密码 
    Phone  string `json:"phone" form:"phone" gorm:"column:phone;comment:用户手机号;size:191;"`  //用户手机号 
    Status  string `json:"status" form:"status" gorm:"column:status;comment:用户状态 0:正常 1冻结;size:32;"`  //用户状态 0:正常 1冻结 
    Username  string `json:"username" form:"username" gorm:"column:username;comment:用户登录名;size:191;"`  //用户登录名 
    Uuid  string `json:"uuid" form:"uuid" gorm:"column:uuid;comment:用户UUID;size:191;"`  //用户UUID 
}


// TableName users表 Users自定义表名 users
func (Users) TableName() string {
    return "users"
}

