package shop

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	TenantApi
	TenantInfoApi
	TenantInfoReviewProcessApi
	TenantInfoReviewLogApi
	UsersApi
	UserApplyJoinTenantProcessApi
	UserApplyJoinTenantProcessFlowApi
	TenantInviteUserProcessApi
	TenantInviteUserProcessLogApi
	TenantUserRelApi
	AuthConfigApi
	AuthApi
	UserAuthInfoApi
}

var (
	tenantService                         = service.ServiceGroupApp.ShopServiceGroup.TenantService
	tenantInfoService                     = service.ServiceGroupApp.ShopServiceGroup.TenantInfoService
	tenantInfoReviewProcessService        = service.ServiceGroupApp.ShopServiceGroup.TenantInfoReviewProcessService
	tenantInfoReviewLogService            = service.ServiceGroupApp.ShopServiceGroup.TenantInfoReviewLogService
	usersService                          = service.ServiceGroupApp.ShopServiceGroup.UsersService
	userApplyJoinTenantProcessService     = service.ServiceGroupApp.ShopServiceGroup.UserApplyJoinTenantProcessService
	userApplyJoinTenantProcessFlowService = service.ServiceGroupApp.ShopServiceGroup.UserApplyJoinTenantProcessFlowService
	tenantInviteUserProcessService        = service.ServiceGroupApp.ShopServiceGroup.TenantInviteUserProcessService
	tenantInviteUserProcessLogService     = service.ServiceGroupApp.ShopServiceGroup.TenantInviteUserProcessLogService
	tenantUserRelService                  = service.ServiceGroupApp.ShopServiceGroup.TenantUserRelService
	authConfigService                     = service.ServiceGroupApp.ShopServiceGroup.AuthConfigService
	authService                           = service.ServiceGroupApp.ShopServiceGroup.AuthService
	userAuthInfoService                   = service.ServiceGroupApp.ShopServiceGroup.UserAuthInfoService
)
