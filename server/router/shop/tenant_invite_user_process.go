package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantInviteUserProcessRouter struct {}

// InitTenantInviteUserProcessRouter 初始化 tenantInviteUserProcess表 路由信息
func (s *TenantInviteUserProcessRouter) InitTenantInviteUserProcessRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantInviteUserProcessRouter := Router.Group("tenantInviteUserProcess").Use(middleware.OperationRecord())
	tenantInviteUserProcessRouterWithoutRecord := Router.Group("tenantInviteUserProcess")
	tenantInviteUserProcessRouterWithoutAuth := PublicRouter.Group("tenantInviteUserProcess")
	{
		tenantInviteUserProcessRouter.POST("createTenantInviteUserProcess", tenantInviteUserProcessApi.CreateTenantInviteUserProcess)   // 新建tenantInviteUserProcess表
		tenantInviteUserProcessRouter.DELETE("deleteTenantInviteUserProcess", tenantInviteUserProcessApi.DeleteTenantInviteUserProcess) // 删除tenantInviteUserProcess表
		tenantInviteUserProcessRouter.DELETE("deleteTenantInviteUserProcessByIds", tenantInviteUserProcessApi.DeleteTenantInviteUserProcessByIds) // 批量删除tenantInviteUserProcess表
		tenantInviteUserProcessRouter.PUT("updateTenantInviteUserProcess", tenantInviteUserProcessApi.UpdateTenantInviteUserProcess)    // 更新tenantInviteUserProcess表
	}
	{
		tenantInviteUserProcessRouterWithoutRecord.GET("findTenantInviteUserProcess", tenantInviteUserProcessApi.FindTenantInviteUserProcess)        // 根据ID获取tenantInviteUserProcess表
		tenantInviteUserProcessRouterWithoutRecord.GET("getTenantInviteUserProcessList", tenantInviteUserProcessApi.GetTenantInviteUserProcessList)  // 获取tenantInviteUserProcess表列表
	}
	{
	    tenantInviteUserProcessRouterWithoutAuth.GET("getTenantInviteUserProcessPublic", tenantInviteUserProcessApi.GetTenantInviteUserProcessPublic)  // 获取tenantInviteUserProcess表列表
	}
}
