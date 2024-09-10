package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type UserAuthInfoRouter struct {}

// InitUserAuthInfoRouter 初始化 userAuthInfo表 路由信息
func (s *UserAuthInfoRouter) InitUserAuthInfoRouter(Router *gin.RouterGroup,PublicRouter *gin.RouterGroup) {
	userAuthInfoRouter := Router.Group("userAuthInfo").Use(middleware.OperationRecord())
	userAuthInfoRouterWithoutRecord := Router.Group("userAuthInfo")
	userAuthInfoRouterWithoutAuth := PublicRouter.Group("userAuthInfo")
	{
		userAuthInfoRouter.POST("createUserAuthInfo", userAuthInfoApi.CreateUserAuthInfo)   // 新建userAuthInfo表
		userAuthInfoRouter.DELETE("deleteUserAuthInfo", userAuthInfoApi.DeleteUserAuthInfo) // 删除userAuthInfo表
		userAuthInfoRouter.DELETE("deleteUserAuthInfoByIds", userAuthInfoApi.DeleteUserAuthInfoByIds) // 批量删除userAuthInfo表
		userAuthInfoRouter.PUT("updateUserAuthInfo", userAuthInfoApi.UpdateUserAuthInfo)    // 更新userAuthInfo表
	}
	{
		userAuthInfoRouterWithoutRecord.GET("findUserAuthInfo", userAuthInfoApi.FindUserAuthInfo)        // 根据ID获取userAuthInfo表
		userAuthInfoRouterWithoutRecord.GET("getUserAuthInfoList", userAuthInfoApi.GetUserAuthInfoList)  // 获取userAuthInfo表列表
	}
	{
	    userAuthInfoRouterWithoutAuth.GET("getUserAuthInfoPublic", userAuthInfoApi.GetUserAuthInfoPublic)  // 获取userAuthInfo表列表
	}
}
