package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantInfoReviewLogRouter struct {}

// InitTenantInfoReviewLogRouter 初始化 tenantInfoReviewLog表 路由信息
func (s *TenantInfoReviewLogRouter) InitTenantInfoReviewLogRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantInfoReviewLogRouter := Router.Group("tenantInfoReviewLog").Use(middleware.OperationRecord())
	tenantInfoReviewLogRouterWithoutRecord := Router.Group("tenantInfoReviewLog")
	tenantInfoReviewLogRouterWithoutAuth := PublicRouter.Group("tenantInfoReviewLog")
	{
		tenantInfoReviewLogRouter.POST("createTenantInfoReviewLog", tenantInfoReviewLogApi.CreateTenantInfoReviewLog)   // 新建tenantInfoReviewLog表
		tenantInfoReviewLogRouter.DELETE("deleteTenantInfoReviewLog", tenantInfoReviewLogApi.DeleteTenantInfoReviewLog) // 删除tenantInfoReviewLog表
		tenantInfoReviewLogRouter.DELETE("deleteTenantInfoReviewLogByIds", tenantInfoReviewLogApi.DeleteTenantInfoReviewLogByIds) // 批量删除tenantInfoReviewLog表
		tenantInfoReviewLogRouter.PUT("updateTenantInfoReviewLog", tenantInfoReviewLogApi.UpdateTenantInfoReviewLog)    // 更新tenantInfoReviewLog表
	}
	{
		tenantInfoReviewLogRouterWithoutRecord.GET("findTenantInfoReviewLog", tenantInfoReviewLogApi.FindTenantInfoReviewLog)        // 根据ID获取tenantInfoReviewLog表
		tenantInfoReviewLogRouterWithoutRecord.GET("getTenantInfoReviewLogList", tenantInfoReviewLogApi.GetTenantInfoReviewLogList)  // 获取tenantInfoReviewLog表列表
	}
	{
	    tenantInfoReviewLogRouterWithoutAuth.GET("getTenantInfoReviewLogPublic", tenantInfoReviewLogApi.GetTenantInfoReviewLogPublic)  // 获取tenantInfoReviewLog表列表
	}
}
