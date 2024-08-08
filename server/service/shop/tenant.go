package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantService struct {}

// CreateTenant 创建tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService) CreateTenant(tenant *shop.Tenant) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenant).Error
	return err
}

// DeleteTenant 删除tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService)DeleteTenant(id string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.Tenant{},"id = ?",id).Error
	return err
}

// DeleteTenantByIds 批量删除tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService)DeleteTenantByIds(ids []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.Tenant{},"id in ?",ids).Error
	return err
}

// UpdateTenant 更新tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService)UpdateTenant(tenant shop.Tenant) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.Tenant{}).Where("id = ?",tenant.Id).Updates(&tenant).Error
	return err
}

// GetTenant 根据id获取tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService)GetTenant(id string) (tenant shop.Tenant, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&tenant).Error
	return
}

// GetTenantInfoList 分页获取tenant表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantService *TenantService)GetTenantInfoList(info shopReq.TenantSearch) (list []shop.Tenant, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.Tenant{})
    var tenants []shop.Tenant
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Id != nil {
        db = db.Where("id = ?",info.Id)
    }
        if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
            db = db.Where("created_at BETWEEN ? AND ? ",info.StartCreatedAt,info.EndCreatedAt)
        }
        if info.StartUpdatedAt != nil && info.EndUpdatedAt != nil {
            db = db.Where("updated_at BETWEEN ? AND ? ",info.StartUpdatedAt,info.EndUpdatedAt)
        }
    if info.Uuid != "" {
        db = db.Where("uuid = ?",info.Uuid)
    }
    if info.TenantName != "" {
        db = db.Where("tenant_name LIKE ?","%"+ info.TenantName+"%")
    }
    if info.Status != "" {
        db = db.Where("status = ?",info.Status)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
        var OrderStr string
        orderMap := make(map[string]bool)
         	orderMap["id"] = true
         	orderMap["created_at"] = true
         	orderMap["updated_at"] = true
         	orderMap["status"] = true
       if orderMap[info.Sort] {
          OrderStr = info.Sort
          if info.Order == "descending" {
             OrderStr = OrderStr + " desc"
          }
          db = db.Order(OrderStr)
       }

	if limit != 0 {
       db = db.Limit(limit).Offset(offset)
    }
	
	err = db.Find(&tenants).Error
	return  tenants, total, err
}