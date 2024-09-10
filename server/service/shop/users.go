package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
	shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
	uuid2 "github.com/pborman/uuid"
)

type UsersService struct{}

// CreateUsers 创建users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) CreateUsers(users *shop.Users) (err error) {
	users.Uuid = uuid2.New()
	users.Status = "0"
	err = global.MustGetGlobalDBByDBName("shop").Create(users).Error
	return err
}

// DeleteUsers 删除users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) DeleteUsers(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.Users{}, "id = ?", ID).Error
	return err
}

// DeleteUsersByIds 批量删除users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) DeleteUsersByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.Users{}, "id in ?", IDs).Error
	return err
}

// UpdateUsers 更新users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) UpdateUsers(users shop.Users) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.Users{}).Where("id = ?", users.ID).Updates(&users).Error
	return err
}

// GetUsers 根据ID获取users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) GetUsers(ID string) (users shop.Users, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&users).Error
	return
}

// GetUsersInfoList 分页获取users表记录
// Author [piexlmax](https://github.com/piexlmax)
func (usersService *UsersService) GetUsersInfoList(info shopReq.UsersSearch) (list []shop.Users, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.Users{})
	var userss []shop.Users
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	if info.Email != "" {
		db = db.Where("email = ?", info.Email)
	}
	if info.NickName != "" {
		db = db.Where("nick_name LIKE ?", "%"+info.NickName+"%")
	}
	if info.Phone != "" {
		db = db.Where("phone = ?", info.Phone)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	if info.Username != "" {
		db = db.Where("username = ?", info.Username)
	}
	if info.Uuid != "" {
		db = db.Where("uuid = ?", info.Uuid)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&userss).Error
	return userss, total, err
}
