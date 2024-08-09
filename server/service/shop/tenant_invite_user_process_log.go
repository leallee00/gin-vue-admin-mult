package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantInviteUserProcessLogService struct {}

// CreateTenantInviteUserProcessLog 创建tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService) CreateTenantInviteUserProcessLog(tenantInviteUserProcessLog *shop.TenantInviteUserProcessLog) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenantInviteUserProcessLog).Error
	return err
}

// DeleteTenantInviteUserProcessLog 删除tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService)DeleteTenantInviteUserProcessLog(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantInviteUserProcessLog{},"id = ?",ID).Error
	return err
}

// DeleteTenantInviteUserProcessLogByIds 批量删除tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService)DeleteTenantInviteUserProcessLogByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantInviteUserProcessLog{},"id in ?",IDs).Error
	return err
}

// UpdateTenantInviteUserProcessLog 更新tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService)UpdateTenantInviteUserProcessLog(tenantInviteUserProcessLog shop.TenantInviteUserProcessLog) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInviteUserProcessLog{}).Where("id = ?",tenantInviteUserProcessLog.ID).Updates(&tenantInviteUserProcessLog).Error
	return err
}

// GetTenantInviteUserProcessLog 根据ID获取tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService)GetTenantInviteUserProcessLog(ID string) (tenantInviteUserProcessLog shop.TenantInviteUserProcessLog, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&tenantInviteUserProcessLog).Error
	return
}

// GetTenantInviteUserProcessLogInfoList 分页获取tenantInviteUserProcessLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInviteUserProcessLogService *TenantInviteUserProcessLogService)GetTenantInviteUserProcessLogInfoList(info shopReq.TenantInviteUserProcessLogSearch) (list []shop.TenantInviteUserProcessLog, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInviteUserProcessLog{})
    var tenantInviteUserProcessLogs []shop.TenantInviteUserProcessLog
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
    if info.Desc != "" {
        db = db.Where("desc LIKE ?","%"+ info.Desc+"%")
    }
    if info.InviteId != nil {
        db = db.Where("invite_id = ?",info.InviteId)
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
	
	err = db.Find(&tenantInviteUserProcessLogs).Error
	return  tenantInviteUserProcessLogs, total, err
}