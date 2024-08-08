package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantRouter struct {}

// InitTenantRouter 初始化 tenant表 路由信息
func (s *TenantRouter) InitTenantRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantRouter := Router.Group("tenant").Use(middleware.OperationRecord())
	tenantRouterWithoutRecord := Router.Group("tenant")
	tenantRouterWithoutAuth := PublicRouter.Group("tenant")
	{
		tenantRouter.POST("createTenant", tenantApi.CreateTenant)   // 新建tenant表
		tenantRouter.DELETE("deleteTenant", tenantApi.DeleteTenant) // 删除tenant表
		tenantRouter.DELETE("deleteTenantByIds", tenantApi.DeleteTenantByIds) // 批量删除tenant表
		tenantRouter.PUT("updateTenant", tenantApi.UpdateTenant)    // 更新tenant表
	}
	{
		tenantRouterWithoutRecord.GET("findTenant", tenantApi.FindTenant)        // 根据ID获取tenant表
		tenantRouterWithoutRecord.GET("getTenantList", tenantApi.GetTenantList)  // 获取tenant表列表
	}
	{
	    tenantRouterWithoutAuth.GET("getTenantPublic", tenantApi.GetTenantPublic)  // 获取tenant表列表
	}
}
