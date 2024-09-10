package shop

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
	shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
	"go.uber.org/zap"
)

func SaveFlow(userApplyJoinTenantProcess *shop.UserApplyJoinTenantProcess) {
	// 增加日志
	applyId := int(userApplyJoinTenantProcess.ID)
	TenantId := int(userApplyJoinTenantProcess.TenantID)
	userApplyJoinTenantProcessFlow := &shop.UserApplyJoinTenantProcessFlow{

		ApplyId:   &applyId,
		Desc:      userApplyJoinTenantProcess.Desc,
		OptUserId: userApplyJoinTenantProcess.OptUserId,
		Process:   userApplyJoinTenantProcess.Process,
		TenantId:  &TenantId,
		UserId:    userApplyJoinTenantProcess.UserId,
	}

	flow := UserApplyJoinTenantProcessFlowService{}
	err := flow.CreateUserApplyJoinTenantProcessFlow(userApplyJoinTenantProcessFlow)
	if err != nil {
		global.GVA_LOG.Error("增加日志失败", zap.Any("err", err))
	}
}

type UserApplyJoinTenantProcessService struct{}

// CreateUserApplyJoinTenantProcess 创建userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) CreateUserApplyJoinTenantProcess(userApplyJoinTenantProcess *shop.UserApplyJoinTenantProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(userApplyJoinTenantProcess).Error
	if err != nil {
		global.GVA_LOG.Error("CreateUserApplyJoinTenantProcess 失败", zap.Any("err", err))
		return err
	}

	SaveFlow(userApplyJoinTenantProcess)

	return err
}

// DeleteUserApplyJoinTenantProcess 删除userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) DeleteUserApplyJoinTenantProcess(ID string) (err error) {
	userApplyJoinTenantProcess, err := userApplyJoinTenantProcessService.GetUserApplyJoinTenantProcess(ID)
	if err != nil {
		global.GVA_LOG.Error("查询数据失败", zap.Any("err", err))
		return nil
	}

	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.UserApplyJoinTenantProcess{}, "id = ?", ID).Error
	if err != nil {
		global.GVA_LOG.Error("MustGetGlobalDBByDBName 失败", zap.Any("err", err))
		return err
	}

	SaveFlow(&userApplyJoinTenantProcess)

	return err
}

// DeleteUserApplyJoinTenantProcessByIds 批量删除userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) DeleteUserApplyJoinTenantProcessByIds(IDs []string) (err error) {
	return fmt.Errorf("暂不支持批量删除")

	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.UserApplyJoinTenantProcess{}, "id in ?", IDs).Error
	return err
}

// UpdateUserApplyJoinTenantProcess 更新userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) UpdateUserApplyJoinTenantProcess(userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcess{}).Where("id = ?", userApplyJoinTenantProcess.ID).Updates(&userApplyJoinTenantProcess).Error
	if err != nil {
		global.GVA_LOG.Error("UserApplyJoinTenantProcessService 失败", zap.Any("err", err))
		return err
	}

	SaveFlow(&userApplyJoinTenantProcess)

	// 如果是通过则添加关联关系
	if userApplyJoinTenantProcess.Process == "2" {
		global.GVA_LOG.Debug("通过验证，添加用户和商户直接的关联关系")
		rel := TenantUserRelService{}
		tenantUserRel := &shop.TenantUserRel{
			TenantId: userApplyJoinTenantProcess.TenantId,
			UserId:   userApplyJoinTenantProcess.UserId,
		}
		err = rel.CreateTenantUserRel(tenantUserRel)
		if err != nil {
			global.GVA_LOG.Error("UpdateUserApplyJoinTenantProcess 失败", zap.Any("err", err))
			return err
		}
	}
	return err
}

// GetUserApplyJoinTenantProcess 根据ID获取userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) GetUserApplyJoinTenantProcess(ID string) (userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", ID).First(&userApplyJoinTenantProcess).Error
	return
}

// GetUserApplyJoinTenantProcessInfoList 分页获取userApplyJoinTenantProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (userApplyJoinTenantProcessService *UserApplyJoinTenantProcessService) GetUserApplyJoinTenantProcessInfoList(info shopReq.UserApplyJoinTenantProcessSearch) (list []shop.UserApplyJoinTenantProcess, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.UserApplyJoinTenantProcess{})
	var userApplyJoinTenantProcesss []shop.UserApplyJoinTenantProcess
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ?", info.StartCreatedAt, info.EndCreatedAt)
	}
	if info.Desc != "" {
		db = db.Where("desc LIKE ?", "%"+info.Desc+"%")
	}
	if info.OptUserId != nil {
		db = db.Where("opt_user_id = ?", info.OptUserId)
	}
	if info.Process != "" {
		db = db.Where("process = ?", info.Process)
	}
	if info.TenantId != nil {
		db = db.Where("tenant_id = ?", info.TenantId)
	}
	if info.UserId != nil {
		db = db.Where("user_id = ?", info.UserId)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&userApplyJoinTenantProcesss).Error
	return userApplyJoinTenantProcesss, total, err
}
