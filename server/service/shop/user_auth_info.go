package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "gorm.io/gorm"
)

type UserAuthInfoService struct {}

// CreateUserAuthInfo 创建userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService) CreateUserAuthInfo(userAuthInfo *shop.UserAuthInfo) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(userAuthInfo).Error
	return err
}

// DeleteUserAuthInfo 删除userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService)DeleteUserAuthInfo(ID string,userID uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.UserAuthInfo{}).Where("id = ?", ID).Update("deleted_by", userID).Error; err != nil {
              return err
        }
        if err = tx.Delete(&shop.UserAuthInfo{},"id = ?",ID).Error; err != nil {
              return err
        }
        return nil
	})
	return err
}

// DeleteUserAuthInfoByIds 批量删除userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService)DeleteUserAuthInfoByIds(IDs []string,deleted_by uint) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Transaction(func(tx *gorm.DB) error {
	    if err := tx.Model(&shop.UserAuthInfo{}).Where("id in ?", IDs).Update("deleted_by", deleted_by).Error; err != nil {
            return err
        }
        if err := tx.Where("id in ?", IDs).Delete(&shop.UserAuthInfo{}).Error; err != nil {
            return err
        }
        return nil
    })
	return err
}

// UpdateUserAuthInfo 更新userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService)UpdateUserAuthInfo(userAuthInfo shop.UserAuthInfo) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.UserAuthInfo{}).Where("id = ?",userAuthInfo.ID).Updates(&userAuthInfo).Error
	return err
}

// GetUserAuthInfo 根据ID获取userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService)GetUserAuthInfo(ID string) (userAuthInfo shop.UserAuthInfo, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&userAuthInfo).Error
	return
}

// GetUserAuthInfoInfoList 分页获取userAuthInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userAuthInfoService *UserAuthInfoService)GetUserAuthInfoInfoList(info shopReq.UserAuthInfoSearch) (list []shop.UserAuthInfo, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.UserAuthInfo{})
    var userAuthInfos []shop.UserAuthInfo
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
    if info.EmergencyContactName != "" {
        db = db.Where("emergency_contact_name = ?",info.EmergencyContactName)
    }
    if info.EmergencyContactPhone != "" {
        db = db.Where("emergency_contact_phone = ?",info.EmergencyContactPhone)
    }
    if info.IdCardNo != "" {
        db = db.Where("id_card_no = ?",info.IdCardNo)
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
	
	err = db.Find(&userAuthInfos).Error
	return  userAuthInfos, total, err
}