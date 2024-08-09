package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type UserApplyJoinTenantProcessRouter struct {}

// InitUserApplyJoinTenantProcessRouter 初始化 userApplyJoinTenantProcess表 路由信息
func (s *UserApplyJoinTenantProcessRouter) InitUserApplyJoinTenantProcessRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	userApplyJoinTenantProcessRouter := Router.Group("userApplyJoinTenantProcess").Use(middleware.OperationRecord())
	userApplyJoinTenantProcessRouterWithoutRecord := Router.Group("userApplyJoinTenantProcess")
	userApplyJoinTenantProcessRouterWithoutAuth := PublicRouter.Group("userApplyJoinTenantProcess")
	{
		userApplyJoinTenantProcessRouter.POST("createUserApplyJoinTenantProcess", userApplyJoinTenantProcessApi.CreateUserApplyJoinTenantProcess)   // 新建userApplyJoinTenantProcess表
		userApplyJoinTenantProcessRouter.DELETE("deleteUserApplyJoinTenantProcess", userApplyJoinTenantProcessApi.DeleteUserApplyJoinTenantProcess) // 删除userApplyJoinTenantProcess表
		userApplyJoinTenantProcessRouter.DELETE("deleteUserApplyJoinTenantProcessByIds", userApplyJoinTenantProcessApi.DeleteUserApplyJoinTenantProcessByIds) // 批量删除userApplyJoinTenantProcess表
		userApplyJoinTenantProcessRouter.PUT("updateUserApplyJoinTenantProcess", userApplyJoinTenantProcessApi.UpdateUserApplyJoinTenantProcess)    // 更新userApplyJoinTenantProcess表
	}
	{
		userApplyJoinTenantProcessRouterWithoutRecord.GET("findUserApplyJoinTenantProcess", userApplyJoinTenantProcessApi.FindUserApplyJoinTenantProcess)        // 根据ID获取userApplyJoinTenantProcess表
		userApplyJoinTenantProcessRouterWithoutRecord.GET("getUserApplyJoinTenantProcessList", userApplyJoinTenantProcessApi.GetUserApplyJoinTenantProcessList)  // 获取userApplyJoinTenantProcess表列表
	}
	{
	    userApplyJoinTenantProcessRouterWithoutAuth.GET("getUserApplyJoinTenantProcessPublic", userApplyJoinTenantProcessApi.GetUserApplyJoinTenantProcessPublic)  // 获取userApplyJoinTenantProcess表列表
	}
}
