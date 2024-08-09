package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type UserApplyJoinTenantProcessFlowService struct {}

// CreateUserApplyJoinTenantProcessFlow 创建userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService) CreateUserApplyJoinTenantProcessFlow(userApplyJoinTenantProcessFlow *shop.UserApplyJoinTenantProcessFlow) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(userApplyJoinTenantProcessFlow).Error
	return err
}

// DeleteUserApplyJoinTenantProcessFlow 删除userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService)DeleteUserApplyJoinTenantProcessFlow(ID string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.UserApplyJoinTenantProcessFlow{},"id = ?",ID).Error
	return err
}

// DeleteUserApplyJoinTenantProcessFlowByIds 批量删除userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService)DeleteUserApplyJoinTenantProcessFlowByIds(IDs []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.UserApplyJoinTenantProcessFlow{},"id in ?",IDs).Error
	return err
}

// UpdateUserApplyJoinTenantProcessFlow 更新userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService)UpdateUserApplyJoinTenantProcessFlow(userApplyJoinTenantProcessFlow shop.UserApplyJoinTenantProcessFlow) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcessFlow{}).Where("id = ?",userApplyJoinTenantProcessFlow.ID).Updates(&userApplyJoinTenantProcessFlow).Error
	return err
}

// GetUserApplyJoinTenantProcessFlow 根据ID获取userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService)GetUserApplyJoinTenantProcessFlow(ID string) (userApplyJoinTenantProcessFlow shop.UserApplyJoinTenantProcessFlow, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&userApplyJoinTenantProcessFlow).Error
	return
}

// GetUserApplyJoinTenantProcessFlowInfoList 分页获取userApplyJoinTenantProcessFlow表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessFlowService *UserApplyJoinTenantProcessFlowService)GetUserApplyJoinTenantProcessFlowInfoList(info shopReq.UserApplyJoinTenantProcessFlowSearch) (list []shop.UserApplyJoinTenantProcessFlow, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcessFlow{})
    var userApplyJoinTenantProcessFlows []shop.UserApplyJoinTenantProcessFlow
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.StartCreatedAt !=nil && info.EndCreatedAt !=nil {
     db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
    }
    if info.ApplyId != nil {
        db = db.Where("apply_id = ?",info.ApplyId)
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
	
	err = db.Find(&userApplyJoinTenantProcessFlows).Error
	return  userApplyJoinTenantProcessFlows, total, err
}