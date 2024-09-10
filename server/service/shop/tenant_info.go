package shop

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
	shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
)

type TenantInfoService struct{}

// CreateTenantInfo 创建tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) CreateTenantInfo(tenantInfo *shop.TenantInfo) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Create(tenantInfo).Error
	return err
}

// DeleteTenantInfo 删除tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) DeleteTenantInfo(id string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&shop.TenantInfo{}, "id = ?", id).Error
	return err
}

// DeleteTenantInfoByIds 批量删除tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) DeleteTenantInfoByIds(ids []string) (err error) {
	err = global.MustGetGlobalDBByDBName("shop").Delete(&[]shop.TenantInfo{}, "id in ?", ids).Error
	return err
}

// UpdateTenantInfo 更新tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) UpdateTenantInfo(tenantInfo shop.TenantInfo) (err error) {
	// 取出数据库内容
	old, err := tenantInfoService.GetTenantInfo(fmt.Sprintf("%v", *tenantInfo.Id))
	if err != nil {
		return err
	}

	if old.Status != tenantInfo.Status {
		optUser := 121212
		//v, _ := json.Marshal(tenantInfo)

		// 插入一个进度
		tenantInfoReviewProcess := &shop.TenantInfoReviewProcess{
			TenantId: tenantInfo.TenantId,
			//Data:        string(v),
			Process:     "0",
			ProcessDesc: "提交审核",
			OptUser:     &optUser,
		}

		tips := &TenantInfoReviewProcessService{}
		err = tips.CreateTenantInfoReviewProcess(tenantInfoReviewProcess)
	}

	err = global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfo{}).Where("id = ?", tenantInfo.Id).Updates(&tenantInfo).Error
	return err
}

// GetTenantInfo 根据id获取tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) GetTenantInfo(id string) (tenantInfo shop.TenantInfo, err error) {
	err = global.MustGetGlobalDBByDBName("shop").Where("id = ?", id).First(&tenantInfo).Error
	return
}

// GetTenantInfoInfoList 分页获取tenantInfo表记录
// Author [piexlmax](https://github.com/piexlmax)
func (tenantInfoService *TenantInfoService) GetTenantInfoInfoList(info shopReq.TenantInfoSearch) (list []shop.TenantInfo, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.MustGetGlobalDBByDBName("shop").Model(&shop.TenantInfo{})
	var tenantInfos []shop.TenantInfo
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
	if info.Liaison != "" {
		db = db.Where("liaison = ?", info.Liaison)
	}
	if info.Phone != "" {
		db = db.Where("phone = ?", info.Phone)
	}
	if info.Email != "" {
		db = db.Where("email LIKE ?", "%"+info.Email+"%")
	}
	if info.OwnerName != "" {
		db = db.Where("owner_name LIKE ?", "%"+info.OwnerName+"%")
	}
	if info.OwnerCode != "" {
		db = db.Where("owner_code = ?", info.OwnerCode)
	}
	if info.OwnerPhone != "" {
		db = db.Where("owner_phone = ?", info.OwnerPhone)
	}
	if info.QualOrgLegal != "" {
		db = db.Where("qual_org_legal = ?", info.QualOrgLegal)
	}
	if info.QualOrgName != "" {
		db = db.Where("qual_org_name LIKE ?", "%"+info.QualOrgName+"%")
	}
	if info.QualOrgAddr != "" {
		db = db.Where("qual_org_addr LIKE ?", "%"+info.QualOrgAddr+"%")
	}
	if info.StartQualOrgExpireTime != nil && info.EndQualOrgExpireTime != nil {
		db = db.Where("qual_org_expire_time BETWEEN ? AND ? ", info.StartQualOrgExpireTime, info.EndQualOrgExpireTime)
	}
	if info.QualSocialCode != "" {
		db = db.Where("qual_social_code = ?", info.QualSocialCode)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	if limit != 0 {
		db = db.Limit(limit).Offset(offset)
	}

	err = db.Find(&tenantInfos).Error
	return tenantInfos, total, err
}
