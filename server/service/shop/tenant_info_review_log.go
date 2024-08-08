package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantInfoReviewLogService struct {}

// CreateTenantInfoReviewLog 创建tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService) CreateTenantInfoReviewLog(tenantInfoReviewLog *shop.TenantInfoReviewLog) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenantInfoReviewLog).Error
	return err
}

// DeleteTenantInfoReviewLog 删除tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService)DeleteTenantInfoReviewLog(id string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantInfoReviewLog{},"id = ?",id).Error
	return err
}

// DeleteTenantInfoReviewLogByIds 批量删除tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService)DeleteTenantInfoReviewLogByIds(ids []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantInfoReviewLog{},"id in ?",ids).Error
	return err
}

// UpdateTenantInfoReviewLog 更新tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService)UpdateTenantInfoReviewLog(tenantInfoReviewLog shop.TenantInfoReviewLog) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfoReviewLog{}).Where("id = ?",tenantInfoReviewLog.Id).Updates(&tenantInfoReviewLog).Error
	return err
}

// GetTenantInfoReviewLog 根据id获取tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService)GetTenantInfoReviewLog(id string) (tenantInfoReviewLog shop.TenantInfoReviewLog, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&tenantInfoReviewLog).Error
	return
}

// GetTenantInfoReviewLogInfoList 分页获取tenantInfoReviewLog表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewLogService *TenantInfoReviewLogService)GetTenantInfoReviewLogInfoList(info shopReq.TenantInfoReviewLogSearch) (list []shop.TenantInfoReviewLog, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfoReviewLog{})
    var tenantInfoReviewLogs []shop.TenantInfoReviewLog
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Id != nil {
        db = db.Where("id = ?",info.Id)
    }
    if info.TenantId != nil {
        db = db.Where("tenant_id = ?",info.TenantId)
    }
        if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
            db = db.Where("created_at BETWEEN ? AND ? ",info.StartCreatedAt,info.EndCreatedAt)
        }
        if info.StartUpdatedAt != nil && info.EndUpdatedAt != nil {
            db = db.Where("updated_at BETWEEN ? AND ? ",info.StartUpdatedAt,info.EndUpdatedAt)
        }
    if info.OptUser != nil {
        db = db.Where("opt_user = ?",info.OptUser)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }

	if limit != 0 {
       db = db.Limit(limit).Offset(offset)
    }
	
	err = db.Find(&tenantInfoReviewLogs).Error
	return  tenantInfoReviewLogs, total, err
}