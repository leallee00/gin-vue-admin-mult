package global

import (
	"time"
)

// 区分租户的头
type GVA_MODEL struct {
	ID        uint      `gorm:"primarykey" json:"ID"` // 主键ID
	TenantID  int64     `gorm:"foreignkey:tenant_id index comment:租户编号" json:"tenantID"`
	CreatedAt time.Time // 创建时间
	UpdatedAt time.Time // 更新时间
	//DeletedAt gorm.DeletedAt `gorm:"index" json:"-"` // 删除时间
}

// 系统表不区分租户
type GVA_MODEL_SYS struct {
	ID        uint      `gorm:"primarykey" json:"ID"` // 主键ID
	CreatedAt time.Time // 创建时间
	UpdatedAt time.Time // 更新时间
	//DeletedAt gorm.DeletedAt `gorm:"index" json:"-"` // 删除时间
}
