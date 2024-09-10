package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantUserRelRouter struct {}

// InitTenantUserRelRouter 初始化 tenantUserRel表 路由信息
func (s *TenantUserRelRouter) InitTenantUserRelRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantUserRelRouter := Router.Group("tenantUserRel").Use(middleware.OperationRecord())
	tenantUserRelRouterWithoutRecord := Router.Group("tenantUserRel")
	tenantUserRelRouterWithoutAuth := PublicRouter.Group("tenantUserRel")
	{
		tenantUserRelRouter.POST("createTenantUserRel", tenantUserRelApi.CreateTenantUserRel)   // 新建tenantUserRel表
		tenantUserRelRouter.DELETE("deleteTenantUserRel", tenantUserRelApi.DeleteTenantUserRel) // 删除tenantUserRel表
		tenantUserRelRouter.DELETE("deleteTenantUserRelByIds", tenantUserRelApi.DeleteTenantUserRelByIds) // 批量删除tenantUserRel表
		tenantUserRelRouter.PUT("updateTenantUserRel", tenantUserRelApi.UpdateTenantUserRel)    // 更新tenantUserRel表
	}
	{
		tenantUserRelRouterWithoutRecord.GET("findTenantUserRel", tenantUserRelApi.FindTenantUserRel)        // 根据ID获取tenantUserRel表
		tenantUserRelRouterWithoutRecord.GET("getTenantUserRelList", tenantUserRelApi.GetTenantUserRelList)  // 获取tenantUserRel表列表
	}
	{
	    tenantUserRelRouterWithoutAuth.GET("getTenantUserRelPublic", tenantUserRelApi.GetTenantUserRelPublic)  // 获取tenantUserRel表列表
	}
}
