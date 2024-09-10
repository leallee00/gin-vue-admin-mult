package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantUserRelService struct {}

// CreateTenantUserRel 创建tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService) CreateTenantUserRel(tenantUserRel *shop.TenantUserRel) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenantUserRel).Error
	return err
}

// DeleteTenantUserRel 删除tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService)DeleteTenantUserRel(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantUserRel{},"id = ?",ID).Error
	return err
}

// DeleteTenantUserRelByIds 批量删除tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService)DeleteTenantUserRelByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantUserRel{},"id in ?",IDs).Error
	return err
}

// UpdateTenantUserRel 更新tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService)UpdateTenantUserRel(tenantUserRel shop.TenantUserRel) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantUserRel{}).Where("id = ?",tenantUserRel.ID).Updates(&tenantUserRel).Error
	return err
}

// GetTenantUserRel 根据ID获取tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService)GetTenantUserRel(ID string) (tenantUserRel shop.TenantUserRel, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&tenantUserRel).Error
	return
}

// GetTenantUserRelInfoList 分页获取tenantUserRel表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantUserRelService *TenantUserRelService)GetTenantUserRelInfoList(info shopReq.TenantUserRelSearch) (list []shop.TenantUserRel, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantUserRel{})
    var tenantUserRels []shop.TenantUserRel
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
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
	
	err = db.Find(&tenantUserRels).Error
	return  tenantUserRels, total, err
}