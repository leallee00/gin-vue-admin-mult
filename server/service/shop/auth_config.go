package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "gorm.io/gorm"
)

type AuthConfigService struct {}

// CreateAuthConfig 创建authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService) CreateAuthConfig(authConfig *shop.AuthConfig) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(authConfig).Error
	return err
}

// DeleteAuthConfig 删除authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService)DeleteAuthConfig(id string,userID uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.AuthConfig{}).Where("id = ?", id).Update("deleted_by", userID).Error; err != nil {
              return err
        }
        if err = tx.Delete(&shop.AuthConfig{},"id = ?",id).Error; err != nil {
              return err
        }
        return nil
	})
	return err
}

// DeleteAuthConfigByIds 批量删除authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService)DeleteAuthConfigByIds(ids []string,deleted_by uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.AuthConfig{}).Where("id in ?", ids).Update("deleted_by", deleted_by).Error; err != nil {
            return err
        }
        if err := tx.Where("id in ?", ids).Delete(&shop.AuthConfig{}).Error; err != nil {
            return err
        }
        return nil
    })
	return err
}

// UpdateAuthConfig 更新authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService)UpdateAuthConfig(authConfig shop.AuthConfig) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.AuthConfig{}).Where("id = ?",authConfig.Id).Updates(&authConfig).Error
	return err
}

// GetAuthConfig 根据id获取authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService)GetAuthConfig(id string) (authConfig shop.AuthConfig, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&authConfig).Error
	return
}

// GetAuthConfigInfoList 分页获取authConfig表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authConfigService *AuthConfigService)GetAuthConfigInfoList(info shopReq.AuthConfigSearch) (list []shop.AuthConfig, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.AuthConfig{})
    var authConfigs []shop.AuthConfig
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Service != "" {
        db = db.Where("service = ?",info.Service)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
        var OrderStr string
        orderMap := make(map[string]bool)
         	orderMap["service_type"] = true
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
	
	err = db.Find(&authConfigs).Error
	return  authConfigs, total, err
}