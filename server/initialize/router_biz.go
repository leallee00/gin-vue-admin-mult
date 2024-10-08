package initialize

import (
	"github.com/flipped-aurora/gin-vue-admin/server/router"
	"github.com/gin-gonic/gin"
)

func holder(routers ...*gin.RouterGroup) {
	_ = routers
	_ = router.RouterGroupApp
}
func initBizRouter(routers ...*gin.RouterGroup) {
	privateGroup := routers[0]
	publicGroup := routers[1]
	holder(publicGroup, privateGroup)
	{
		shopRouter := router.RouterGroupApp.Shop
		shopRouter.InitTenantRouter(privateGroup, publicGroup)
		shopRouter.InitTenantInfoRouter(privateGroup, publicGroup)
		shopRouter.InitTenantInfoReviewProcessRouter(privateGroup, publicGroup)
		shopRouter.InitTenantInfoReviewLogRouter(privateGroup, publicGroup)
		shopRouter.InitUsersRouter(privateGroup, publicGroup)
		shopRouter.InitUserApplyJoinTenantProcessRouter(privateGroup, publicGroup)
		shopRouter.InitUserApplyJoinTenantProcessFlowRouter(privateGroup, publicGroup)
		shopRouter.InitTenantInviteUserProcessRouter(privateGroup, publicGroup)
		shopRouter.InitTenantInviteUserProcessLogRouter(privateGroup, publicGroup)
		shopRouter.InitTenantUserRelRouter(privateGroup, publicGroup)
		shopRouter.InitAuthConfigRouter(privateGroup, publicGroup)
		shopRouter.InitAuthRouter(privateGroup, publicGroup)
		shopRouter.InitUserAuthInfoRouter(privateGroup, publicGroup)
	}
}

// 占位方法，保证文件可以正确加载，避免go空变量检测报错，请勿删除。
