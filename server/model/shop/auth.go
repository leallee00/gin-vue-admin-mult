// 自动生成模板Auth
package shop

import (
)

// auth表 结构体  Auth
type Auth struct {
    Id  *int `json:"id" form:"id" gorm:"primarykey;column:id;comment:;size:10;"`  //id字段 
    Service  string `json:"service" form:"service" gorm:"column:service;comment:三方服务名称;size:255;"`  //三方服务名称 
    ServiceOpenId  string `json:"serviceOpenId" form:"serviceOpenId" gorm:"column:service_open_id;comment:三方openid;size:255;"`  //三方openid 
    ServiceType  *int `json:"serviceType" form:"serviceType" gorm:"column:service_type;comment:三方服务类型;size:10;"`  //三方服务类型 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:关联用户id;size:19;"`  //关联用户id 
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName auth表 Auth自定义表名 auth
func (Auth) TableName() string {
    return "auth"
}

