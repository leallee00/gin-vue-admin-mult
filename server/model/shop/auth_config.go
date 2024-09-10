// 自动生成模板AuthConfig
package shop

import (
)

// authConfig表 结构体  AuthConfig
type AuthConfig struct {
    AccessKeyId  string `json:"accessKeyId" form:"accessKeyId" gorm:"column:access_key_id;comment:三方授权码;size:255;"`  //三方授权码 
    AccessSecret  string `json:"accessSecret" form:"accessSecret" gorm:"column:access_secret;comment:三方授权密码;size:255;"`  //三方授权密码 
    AuthUrl  string `json:"authUrl" form:"authUrl" gorm:"column:auth_url;comment:三方提供的认证链接;size:1024;"`  //三方提供的认证链接 
    CallBackUrl  string `json:"callBackUrl" form:"callBackUrl" gorm:"column:call_back_url;comment:系统提供的回调地址，第三方认证后回调;size:1024;"`  //系统提供的回调地址，第三方认证后回调 
    Description  string `json:"description" form:"description" gorm:"column:description;comment:详情;size:1024;"`  //详情 
    Id  *int `json:"id" form:"id" gorm:"primarykey;column:id;comment:编号;size:20;"`  //编号 
    Service  string `json:"service" form:"service" gorm:"column:service;comment:三方服务名称;size:255;" binding:"required"`  //三方服务名称 
    ServiceType  *int `json:"serviceType" form:"serviceType" gorm:"column:service_type;comment:三方服务编号;size:10;" binding:"required"`  //三方服务编号 
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName authConfig表 AuthConfig自定义表名 auth_config
func (AuthConfig) TableName() string {
    return "auth_config"
}

