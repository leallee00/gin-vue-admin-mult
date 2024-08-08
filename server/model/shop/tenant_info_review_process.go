// 自动生成模板TenantInfoReviewProcess
package shop

import (
	"time"
)

// tenantInfoReviewProcess表 结构体  TenantInfoReviewProcess
type TenantInfoReviewProcess struct {
    Id  *int `json:"id" form:"id" gorm:"primarykey;column:id;comment:;size:20;"`  //编号 
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:组织id;size:19;"`  //商户编号 
    CreatedAt  *time.Time `json:"createdAt" form:"createdAt" gorm:"column:created_at;comment:;"`  //创建日期 
    UpdatedAt  *time.Time `json:"updatedAt" form:"updatedAt" gorm:"column:updated_at;comment:;"`  //更新日期 
    Data  string `json:"data" form:"data" gorm:"column:data;comment:要审核的数据{json};size:1024;"`  //审核内容{json} 
    Process  string `json:"process" form:"process" gorm:"column:process;comment:进度;size:32;"`  //进度 
    ProcessDesc  string `json:"processDesc" form:"processDesc" gorm:"column:process_desc;comment:进度说明;size:128;"`  //进度说明 
    OptUser  *int `json:"optUser" form:"optUser" gorm:"column:opt_user;comment:操作用户id;size:19;"`  //操作用户id 
}


// TableName tenantInfoReviewProcess表 TenantInfoReviewProcess自定义表名 tenant_info_review_process
func (TenantInfoReviewProcess) TableName() string {
    return "tenant_info_review_process"
}

