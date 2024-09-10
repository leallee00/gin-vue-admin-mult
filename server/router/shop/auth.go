package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type AuthRouter struct {}

// InitAuthRouter 初始化 auth表 路由信息
func (s *AuthRouter) InitAuthRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	authRouter := Router.Group("auth").Use(middleware.OperationRecord())
	authRouterWithoutRecord := Router.Group("auth")
	authRouterWithoutAuth := PublicRouter.Group("auth")
	{
		authRouter.POST("createAuth", authApi.CreateAuth)   // 新建auth表
		authRouter.DELETE("deleteAuth", authApi.DeleteAuth) // 删除auth表
		authRouter.DELETE("deleteAuthByIds", authApi.DeleteAuthByIds) // 批量删除auth表
		authRouter.PUT("updateAuth", authApi.UpdateAuth)    // 更新auth表
	}
	{
		authRouterWithoutRecord.GET("findAuth", authApi.FindAuth)        // 根据ID获取auth表
		authRouterWithoutRecord.GET("getAuthList", authApi.GetAuthList)  // 获取auth表列表
	}
	{
	    authRouterWithoutAuth.GET("getAuthPublic", authApi.GetAuthPublic)  // 获取auth表列表
	}
}
