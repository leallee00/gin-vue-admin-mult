package shop

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	TenantApi
	TenantInfoApi
	TenantInfoReviewProcessApi
	TenantInfoReviewLogApi
}

var (
	tenantService                  = service.ServiceGroupApp.ShopServiceGroup.TenantService
	tenantInfoService              = service.ServiceGroupApp.ShopServiceGroup.TenantInfoService
	tenantInfoReviewProcessService = service.ServiceGroupApp.ShopServiceGroup.TenantInfoReviewProcessService
	tenantInfoReviewLogService     = service.ServiceGroupApp.ShopServiceGroup.TenantInfoReviewLogService
)
