package shop

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
	shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantInfoReviewProcessService struct{}

// CreateTenantInfoReviewProcess 创建tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) CreateTenantInfoReviewProcess(tenantInfoReviewProcess *shop.TenantInfoReviewProcess) (err error) {
	tenantInfoReviewLog := &shop.TenantInfoReviewLog{
		TenantId:    tenantInfoReviewProcess.TenantId,
		Data:        tenantInfoReviewProcess.Data,
		Process:     tenantInfoReviewProcess.Process,
		ProcessDesc: tenantInfoReviewProcess.ProcessDesc,
		OptUser:     tenantInfoReviewProcess.OptUser,
		Option:      "新增",
	}
	tis := TenantInfoReviewLogService{}
	err = tis.CreateTenantInfoReviewLog(tenantInfoReviewLog)
	if err != nil {
		return err
	}

	err = global.MustGetGlobalDBByDBName("shop").Create(tenantInfoReviewProcess).Error
	return err
}

// DeleteTenantInfoReviewProcess 删除tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) DeleteTenantInfoReviewProcess(id string) (err error) {
	tenantInfoReviewProcess, err := tenantInfoReviewProcessService.GetTenantInfoReviewProcess(id)
	if err != nil {
		return err
	}

	tenantInfoReviewLog := &shop.TenantInfoReviewLog{
		TenantId:    tenantInfoReviewProcess.TenantId,
		Data:        tenantInfoReviewProcess.Data,
		Process:     tenantInfoReviewProcess.Process,
		ProcessDesc: tenantInfoReviewProcess.ProcessDesc,
		OptUser:     tenantInfoReviewProcess.OptUser,
		Option:      "删除",
	}

	tis := TenantInfoReviewLogService{}
	err = tis.CreateTenantInfoReviewLog(tenantInfoReviewLog)
	if err != nil {
		return err
	}

	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantInfoReviewProcess{}, "id = ?", id).Error
	return err
}

// DeleteTenantInfoReviewProcessByIds 批量删除tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) DeleteTenantInfoReviewProcessByIds(ids []string) (err error) {
	return fmt.Errorf("不支持删除多个")

	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantInfoReviewProcess{}, "id in ?", ids).Error
	return err
}

// UpdateTenantInfoReviewProcess 更新tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) UpdateTenantInfoReviewProcess(tenantInfoReviewProcess shop.TenantInfoReviewProcess) (err error) {
	//tenantInfoReviewProcess, err := tenantInfoReviewProcessService.GetTenantInfoReviewProcess(tenantInfoReviewProcess.Id)
	//if err != nil {
	//	return err
	//}

	tenantInfoReviewLog := &shop.TenantInfoReviewLog{
		TenantId:    tenantInfoReviewProcess.TenantId,
		Data:        tenantInfoReviewProcess.Data,
		Process:     tenantInfoReviewProcess.Process,
		ProcessDesc: tenantInfoReviewProcess.ProcessDesc,
		OptUser:     tenantInfoReviewProcess.OptUser,
		Option:      "更新",
	}

	tis := TenantInfoReviewLogService{}
	err = tis.CreateTenantInfoReviewLog(tenantInfoReviewLog)
	if err != nil {
		return err
	}

	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfoReviewProcess{}).Where("id = ?", tenantInfoReviewProcess.Id).Updates(&tenantInfoReviewProcess).Error
	return err
}

// GetTenantInfoReviewProcess 根据id获取tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) GetTenantInfoReviewProcess(id string) (tenantInfoReviewProcess shop.TenantInfoReviewProcess, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&tenantInfoReviewProcess).Error
	return
}

// GetTenantInfoReviewProcessInfoList 分页获取tenantInfoReviewProcess表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoReviewProcessService *TenantInfoReviewProcessService) GetTenantInfoReviewProcessInfoList(info shopReq.TenantInfoReviewProcessSearch) (list []shop.TenantInfoReviewProcess, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfoReviewProcess{})
	var tenantInfoReviewProcesss []shop.TenantInfoReviewProcess
	// 如果有条件搜索 下方会自动创建搜索语句
	if info.Id != nil {
		db = db.Where("id = ?", info.Id)
	}
	if info.TenantId != nil {
		db = db.Where("tenant_id = ?", info.TenantId)
	}
	if info.StartCreatedAt != nil && info.EndCreatedAt != nil {
		db = db.Where("created_at BETWEEN ? AND ? ", info.StartCreatedAt, info.EndCreatedAt)
	}
	if info.StartUpdatedAt != nil && info.EndUpdatedAt != nil {
		db = db.Where("updated_at BETWEEN ? AND ? ", info.StartUpdatedAt, info.EndUpdatedAt)
	}
	if info.Process != "" {
		db = db.Where("process <> ?", info.Process)
	}
	if info.OptUser != nil {
		db = db.Where("opt_user = ?", info.OptUser)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&tenantInfoReviewProcesss).Error
	return tenantInfoReviewProcesss, total, err
}
