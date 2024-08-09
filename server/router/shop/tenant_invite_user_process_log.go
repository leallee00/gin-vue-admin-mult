package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantInviteUserProcessLogRouter struct {}

// InitTenantInviteUserProcessLogRouter 初始化 tenantInviteUserProcessLog表 路由信息
func (s *TenantInviteUserProcessLogRouter) InitTenantInviteUserProcessLogRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantInviteUserProcessLogRouter := Router.Group("tenantInviteUserProcessLog").Use(middleware.OperationRecord())
	tenantInviteUserProcessLogRouterWithoutRecord := Router.Group("tenantInviteUserProcessLog")
	tenantInviteUserProcessLogRouterWithoutAuth := PublicRouter.Group("tenantInviteUserProcessLog")
	{
		tenantInviteUserProcessLogRouter.POST("createTenantInviteUserProcessLog", tenantInviteUserProcessLogApi.CreateTenantInviteUserProcessLog)   // 新建tenantInviteUserProcessLog表
		tenantInviteUserProcessLogRouter.DELETE("deleteTenantInviteUserProcessLog", tenantInviteUserProcessLogApi.DeleteTenantInviteUserProcessLog) // 删除tenantInviteUserProcessLog表
		tenantInviteUserProcessLogRouter.DELETE("deleteTenantInviteUserProcessLogByIds", tenantInviteUserProcessLogApi.DeleteTenantInviteUserProcessLogByIds) // 批量删除tenantInviteUserProcessLog表
		tenantInviteUserProcessLogRouter.PUT("updateTenantInviteUserProcessLog", tenantInviteUserProcessLogApi.UpdateTenantInviteUserProcessLog)    // 更新tenantInviteUserProcessLog表
	}
	{
		tenantInviteUserProcessLogRouterWithoutRecord.GET("findTenantInviteUserProcessLog", tenantInviteUserProcessLogApi.FindTenantInviteUserProcessLog)        // 根据ID获取tenantInviteUserProcessLog表
		tenantInviteUserProcessLogRouterWithoutRecord.GET("getTenantInviteUserProcessLogList", tenantInviteUserProcessLogApi.GetTenantInviteUserProcessLogList)  // 获取tenantInviteUserProcessLog表列表
	}
	{
	    tenantInviteUserProcessLogRouterWithoutAuth.GET("getTenantInviteUserProcessLogPublic", tenantInviteUserProcessLogApi.GetTenantInviteUserProcessLogPublic)  // 获取tenantInviteUserProcessLog表列表
	}
}
