package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantInfoRouter struct {}

// InitTenantInfoRouter 初始化 tenantInfo表 路由信息
func (s *TenantInfoRouter) InitTenantInfoRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantInfoRouter := Router.Group("tenantInfo").Use(middleware.OperationRecord())
	tenantInfoRouterWithoutRecord := Router.Group("tenantInfo")
	tenantInfoRouterWithoutAuth := PublicRouter.Group("tenantInfo")
	{
		tenantInfoRouter.POST("createTenantInfo", tenantInfoApi.CreateTenantInfo)   // 新建tenantInfo表
		tenantInfoRouter.DELETE("deleteTenantInfo", tenantInfoApi.DeleteTenantInfo) // 删除tenantInfo表
		tenantInfoRouter.DELETE("deleteTenantInfoByIds", tenantInfoApi.DeleteTenantInfoByIds) // 批量删除tenantInfo表
		tenantInfoRouter.PUT("updateTenantInfo", tenantInfoApi.UpdateTenantInfo)    // 更新tenantInfo表
	}
	{
		tenantInfoRouterWithoutRecord.GET("findTenantInfo", tenantInfoApi.FindTenantInfo)        // 根据ID获取tenantInfo表
		tenantInfoRouterWithoutRecord.GET("getTenantInfoList", tenantInfoApi.GetTenantInfoList)  // 获取tenantInfo表列表
	}
	{
	    tenantInfoRouterWithoutAuth.GET("getTenantInfoPublic", tenantInfoApi.GetTenantInfoPublic)  // 获取tenantInfo表列表
	}
}
