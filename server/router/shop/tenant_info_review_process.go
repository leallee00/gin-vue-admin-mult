package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TenantInfoReviewProcessRouter struct {}

// InitTenantInfoReviewProcessRouter 初始化 tenantInfoReviewProcess表 路由信息
func (s *TenantInfoReviewProcessRouter) InitTenantInfoReviewProcessRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	tenantInfoReviewProcessRouter := Router.Group("tenantInfoReviewProcess").Use(middleware.OperationRecord())
	tenantInfoReviewProcessRouterWithoutRecord := Router.Group("tenantInfoReviewProcess")
	tenantInfoReviewProcessRouterWithoutAuth := PublicRouter.Group("tenantInfoReviewProcess")
	{
		tenantInfoReviewProcessRouter.POST("createTenantInfoReviewProcess", tenantInfoReviewProcessApi.CreateTenantInfoReviewProcess)   // 新建tenantInfoReviewProcess表
		tenantInfoReviewProcessRouter.DELETE("deleteTenantInfoReviewProcess", tenantInfoReviewProcessApi.DeleteTenantInfoReviewProcess) // 删除tenantInfoReviewProcess表
		tenantInfoReviewProcessRouter.DELETE("deleteTenantInfoReviewProcessByIds", tenantInfoReviewProcessApi.DeleteTenantInfoReviewProcessByIds) // 批量删除tenantInfoReviewProcess表
		tenantInfoReviewProcessRouter.PUT("updateTenantInfoReviewProcess", tenantInfoReviewProcessApi.UpdateTenantInfoReviewProcess)    // 更新tenantInfoReviewProcess表
	}
	{
		tenantInfoReviewProcessRouterWithoutRecord.GET("findTenantInfoReviewProcess", tenantInfoReviewProcessApi.FindTenantInfoReviewProcess)        // 根据ID获取tenantInfoReviewProcess表
		tenantInfoReviewProcessRouterWithoutRecord.GET("getTenantInfoReviewProcessList", tenantInfoReviewProcessApi.GetTenantInfoReviewProcessList)  // 获取tenantInfoReviewProcess表列表
	}
	{
	    tenantInfoReviewProcessRouterWithoutAuth.GET("getTenantInfoReviewProcessPublic", tenantInfoReviewProcessApi.GetTenantInfoReviewProcessPublic)  // 获取tenantInfoReviewProcess表列表
	}
}
