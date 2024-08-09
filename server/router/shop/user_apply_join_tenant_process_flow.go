package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type UserApplyJoinTenantProcessFlowRouter struct {}

// InitUserApplyJoinTenantProcessFlowRouter 初始化 userApplyJoinTenantProcessFlow表 路由信息
func (s *UserApplyJoinTenantProcessFlowRouter) InitUserApplyJoinTenantProcessFlowRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	userApplyJoinTenantProcessFlowRouter := Router.Group("userApplyJoinTenantProcessFlow").Use(middleware.OperationRecord())
	userApplyJoinTenantProcessFlowRouterWithoutRecord := Router.Group("userApplyJoinTenantProcessFlow")
	userApplyJoinTenantProcessFlowRouterWithoutAuth := PublicRouter.Group("userApplyJoinTenantProcessFlow")
	{
		userApplyJoinTenantProcessFlowRouter.POST("createUserApplyJoinTenantProcessFlow", userApplyJoinTenantProcessFlowApi.CreateUserApplyJoinTenantProcessFlow)   // 新建userApplyJoinTenantProcessFlow表
		userApplyJoinTenantProcessFlowRouter.DELETE("deleteUserApplyJoinTenantProcessFlow", userApplyJoinTenantProcessFlowApi.DeleteUserApplyJoinTenantProcessFlow) // 删除userApplyJoinTenantProcessFlow表
		userApplyJoinTenantProcessFlowRouter.DELETE("deleteUserApplyJoinTenantProcessFlowByIds", userApplyJoinTenantProcessFlowApi.DeleteUserApplyJoinTenantProcessFlowByIds) // 批量删除userApplyJoinTenantProcessFlow表
		userApplyJoinTenantProcessFlowRouter.PUT("updateUserApplyJoinTenantProcessFlow", userApplyJoinTenantProcessFlowApi.UpdateUserApplyJoinTenantProcessFlow)    // 更新userApplyJoinTenantProcessFlow表
	}
	{
		userApplyJoinTenantProcessFlowRouterWithoutRecord.GET("findUserApplyJoinTenantProcessFlow", userApplyJoinTenantProcessFlowApi.FindUserApplyJoinTenantProcessFlow)        // 根据ID获取userApplyJoinTenantProcessFlow表
		userApplyJoinTenantProcessFlowRouterWithoutRecord.GET("getUserApplyJoinTenantProcessFlowList", userApplyJoinTenantProcessFlowApi.GetUserApplyJoinTenantProcessFlowList)  // 获取userApplyJoinTenantProcessFlow表列表
	}
	{
	    userApplyJoinTenantProcessFlowRouterWithoutAuth.GET("getUserApplyJoinTenantProcessFlowPublic", userApplyJoinTenantProcessFlowApi.GetUserApplyJoinTenantProcessFlowPublic)  // 获取userApplyJoinTenantProcessFlow表列表
	}
}
