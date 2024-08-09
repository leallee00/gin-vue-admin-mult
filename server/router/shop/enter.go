package shop

import api "github.com/flipped-aurora/gin-vue-admin/server/api/v1"

type RouterGroup struct {
	TenantRouter
	TenantInfoRouter
	TenantInfoReviewProcessRouter
	TenantInfoReviewLogRouter
	UsersRouter
	UserApplyJoinTenantProcessRouter
	UserApplyJoinTenantProcessFlowRouter
	TenantInviteUserProcessRouter
	TenantInviteUserProcessLogRouter
}

var (
	tenantApi                         = api.ApiGroupApp.ShopApiGroup.TenantApi
	tenantInfoApi                     = api.ApiGroupApp.ShopApiGroup.TenantInfoApi
	tenantInfoReviewProcessApi        = api.ApiGroupApp.ShopApiGroup.TenantInfoReviewProcessApi
	tenantInfoReviewLogApi            = api.ApiGroupApp.ShopApiGroup.TenantInfoReviewLogApi
	usersApi                          = api.ApiGroupApp.ShopApiGroup.UsersApi
	userApplyJoinTenantProcessApi     = api.ApiGroupApp.ShopApiGroup.UserApplyJoinTenantProcessApi
	userApplyJoinTenantProcessFlowApi = api.ApiGroupApp.ShopApiGroup.UserApplyJoinTenantProcessFlowApi
	tenantInviteUserProcessApi        = api.ApiGroupApp.ShopApiGroup.TenantInviteUserProcessApi
	tenantInviteUserProcessLogApi     = api.ApiGroupApp.ShopApiGroup.TenantInviteUserProcessLogApi
)
