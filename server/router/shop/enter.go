package shop

import api "github.com/flipped-aurora/gin-vue-admin/server/api/v1"

type RouterGroup struct {
	TenantRouter
	TenantInfoRouter
	TenantInfoReviewProcessRouter
	TenantInfoReviewLogRouter
}

var (
	tenantApi                  = api.ApiGroupApp.ShopApiGroup.TenantApi
	tenantInfoApi              = api.ApiGroupApp.ShopApiGroup.TenantInfoApi
	tenantInfoReviewProcessApi = api.ApiGroupApp.ShopApiGroup.TenantInfoReviewProcessApi
	tenantInfoReviewLogApi     = api.ApiGroupApp.ShopApiGroup.TenantInfoReviewLogApi
)
