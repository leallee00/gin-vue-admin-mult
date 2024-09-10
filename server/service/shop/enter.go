package shop

type ServiceGroup struct {
	TenantService
	TenantInfoService
	TenantInfoReviewProcessService
	TenantInfoReviewLogService
	UsersService
	UserApplyJoinTenantProcessService
	UserApplyJoinTenantProcessFlowService
	TenantInviteUserProcessService
	TenantInviteUserProcessLogService
	TenantUserRelService
	AuthConfigService
	AuthService
	UserAuthInfoService
}