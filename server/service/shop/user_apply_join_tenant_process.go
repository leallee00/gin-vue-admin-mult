package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type UserApplyJoinTenantProcessService struct {}

// CreateUserApplyJoinTenantProcess 创建userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) CreateUserApplyJoinTenantProcess(userApplyJoinTenantProcess *shop.UserApplyJoinTenantProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(userApplyJoinTenantProcess).Error
	return err
}

// DeleteUserApplyJoinTenantProcess 删除userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService)DeleteUserApplyJoinTenantProcess(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.UserApplyJoinTenantProcess{},"id = ?",ID).Error
	return err
}

// DeleteUserApplyJoinTenantProcessByIds 批量删除userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService)DeleteUserApplyJoinTenantProcessByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.UserApplyJoinTenantProcess{},"id in ?",IDs).Error
	return err
}

// UpdateUserApplyJoinTenantProcess 更新userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService)UpdateUserApplyJoinTenantProcess(userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcess{}).Where("id = ?",userApplyJoinTenantProcess.ID).Updates(&userApplyJoinTenantProcess).Error
	return err
}

// GetUserApplyJoinTenantProcess 根据ID获取userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService)GetUserApplyJoinTenantProcess(ID string) (userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&userApplyJoinTenantProcess).Error
	return
}

// GetUserApplyJoinTenantProcessInfoList 分页获取userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService)GetUserApplyJoinTenantProcessInfoList(info shopReq.UserApplyJoinTenantProcessSearch) (list []shop.UserApplyJoinTenantProcess, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcess{})
    var userApplyJoinTenantProcesss []shop.UserApplyJoinTenantProcess
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
	
	err = db.Find(&userApplyJoinTenantProcesss).Error
	return  userApplyJoinTenantProcesss, total, err
}