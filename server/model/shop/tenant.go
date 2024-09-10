// 自动生成模板Tenant
package shop

import (
	"time"
)

// tenant表 结构体  Tenant
type Tenant struct {
	Id              *int       `json:"id" form:"id" gorm:"primarykey;column:id;comment:;size:20;"`    //id字段
	CreatedAt       *time.Time `json:"createdAt" form:"createdAt" gorm:"column:created_at;comment:;"` //createdAt字段
	UpdatedAt       *time.Time `json:"updatedAt" form:"updatedAt" gorm:"column:updated_at;comment:;"` //updatedAt字段
	Uuid            string     `json:"uuid" form:"uuid" gorm:"column:uuid;comment:商户UUID;size:128;"`  //商户UUID
	ParentTenantId  int64      `json:"parentTenantId" form:"parentTenantId" gorm:"column:parent_tenant_id;comment:父商户id;"`
	TenantType      string     `json:"tenantType" form:"tenantType" gorm:"column:tenant_type;comment:商户类型;"`                             // string `json:"tenantType" ` // 商户类型[0:个人，1：个体：2:企业3:事业]
	TenantName      string     `json:"tenantName" form:"tenantName" gorm:"column:tenant_name;comment:商户名称;size:256;" binding:"required"` //商户名称
	AccessKeyId     string     `json:"accessKeyId" form:"accessKeyId" gorm:"column:access_key_id;comment:访问秘钥;size:32;"`                 //访问秘钥
	AccessKeySecret string     `json:"accessKeySecret" form:"accessKeySecret" gorm:"column:access_key_secret;comment:访问秘钥密码;size:64;"`   //访问秘钥密码
	Status          string     `json:"status" form:"status" gorm:"default:创建;column:status;comment:状态;size:32;"`                         //状态
	HeaderImg       string     `json:"headerImg" form:"headerImg" gorm:"column:header_img;comment:主图;size:191;"`                         //主图
}

// TableName tenant表 Tenant自定义表名 tenant
func (Tenant) TableName() string {
	return "tenant"
}
