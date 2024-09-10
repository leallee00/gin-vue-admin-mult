package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "gorm.io/gorm"
)

type AuthService struct {}

// CreateAuth 创建auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService) CreateAuth(auth *shop.Auth) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(auth).Error
	return err
}

// DeleteAuth 删除auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService)DeleteAuth(id string,userID uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.Auth{}).Where("id = ?", id).Update("deleted_by", userID).Error; err != nil {
              return err
        }
        if err = tx.Delete(&shop.Auth{},"id = ?",id).Error; err != nil {
              return err
        }
        return nil
	})
	return err
}

// DeleteAuthByIds 批量删除auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService)DeleteAuthByIds(ids []string,deleted_by uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.Auth{}).Where("id in ?", ids).Update("deleted_by", deleted_by).Error; err != nil {
            return err
        }
        if err := tx.Where("id in ?", ids).Delete(&shop.Auth{}).Error; err != nil {
            return err
        }
        return nil
    })
	return err
}

// UpdateAuth 更新auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService)UpdateAuth(auth shop.Auth) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.Auth{}).Where("id = ?",auth.Id).Updates(&auth).Error
	return err
}

// GetAuth 根据id获取auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService)GetAuth(id string) (auth shop.Auth, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&auth).Error
	return
}

// GetAuthInfoList 分页获取auth表记录
// Author [piexlmax](https://github.com/piexlmax)
func (authService *AuthService)GetAuthInfoList(info shopReq.AuthSearch) (list []shop.Auth, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.Auth{})
    var auths []shop.Auth
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Service != "" {
        db = db.Where("service = ?",info.Service)
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
	
	err = db.Find(&auths).Error
	return  auths, total, err
}