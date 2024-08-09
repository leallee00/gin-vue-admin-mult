package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantInviteUserProcessService struct {}

// CreateTenantInviteUserProcess 创建tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService) CreateTenantInviteUserProcess(tenantInviteUserProcess *shop.TenantInviteUserProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenantInviteUserProcess).Error
	return err
}

// DeleteTenantInviteUserProcess 删除tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService)DeleteTenantInviteUserProcess(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantInviteUserProcess{},"id = ?",ID).Error
	return err
}

// DeleteTenantInviteUserProcessByIds 批量删除tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService)DeleteTenantInviteUserProcessByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantInviteUserProcess{},"id in ?",IDs).Error
	return err
}

// UpdateTenantInviteUserProcess 更新tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService)UpdateTenantInviteUserProcess(tenantInviteUserProcess shop.TenantInviteUserProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInviteUserProcess{}).Where("id = ?",tenantInviteUserProcess.ID).Updates(&tenantInviteUserProcess).Error
	return err
}

// GetTenantInviteUserProcess 根据ID获取tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService)GetTenantInviteUserProcess(ID string) (tenantInviteUserProcess shop.TenantInviteUserProcess, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&tenantInviteUserProcess).Error
	return
}

// GetTenantInviteUserProcessInfoList 分页获取tenantInviteUserProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessService *TenantInviteUserProcessService)GetTenantInviteUserProcessInfoList(info shopReq.TenantInviteUserProcessSearch) (list []shop.TenantInviteUserProcess, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInviteUserProcess{})
    var tenantInviteUserProcesss []shop.TenantInviteUserProcess
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
    if info.Desc != "" {
        db = db.Where("desc LIKE ?","%"+ info.Desc+"%")
    }
    if info.OptUserId != nil {
        db = db.Where("opt_user_id = ?",info.OptUserId)
    }
    if info.Process != "" {
        db = db.Where("process = ?",info.Process)
    }
    if info.TenantId != nil {
        db = db.Where("tenant_id = ?",info.TenantId)
    }
    if info.UserId != nil {
        db = db.Where("user_id = ?",info.UserId)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }

	if limit != 0 {
       db = db.Limit(limit).Offset(offset)
    }
	
	err = db.Find(&tenantInviteUserProcesss).Error
	return  tenantInviteUserProcesss, total, err
}