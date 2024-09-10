package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type AuthConfigRouter struct {}

// InitAuthConfigRouter 初始化 authConfig表 路由信息
func (s *AuthConfigRouter) InitAuthConfigRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	authConfigRouter := Router.Group("authConfig").Use(middleware.OperationRecord())
	authConfigRouterWithoutRecord := Router.Group("authConfig")
	authConfigRouterWithoutAuth := PublicRouter.Group("authConfig")
	{
		authConfigRouter.POST("createAuthConfig", authConfigApi.CreateAuthConfig)   // 新建authConfig表
		authConfigRouter.DELETE("deleteAuthConfig", authConfigApi.DeleteAuthConfig) // 删除authConfig表
		authConfigRouter.DELETE("deleteAuthConfigByIds", authConfigApi.DeleteAuthConfigByIds) // 批量删除authConfig表
		authConfigRouter.PUT("updateAuthConfig", authConfigApi.UpdateAuthConfig)    // 更新authConfig表
	}
	{
		authConfigRouterWithoutRecord.GET("findAuthConfig", authConfigApi.FindAuthConfig)        // 根据ID获取authConfig表
		authConfigRouterWithoutRecord.GET("getAuthConfigList", authConfigApi.GetAuthConfigList)  // 获取authConfig表列表
	}
	{
	    authConfigRouterWithoutAuth.GET("getAuthConfigPublic", authConfigApi.GetAuthConfigPublic)  // 获取authConfig表列表
	}
}
