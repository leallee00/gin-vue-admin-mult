package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
    "github.com/flipped-aurora/gin-vue-admin/server/utils"
)

type AuthConfigApi struct {}

// CreateAuthConfig 创建authConfig表
// @Tags AuthConfig
// @Summary 创建authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.AuthConfig true "创建authConfig表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /authConfig/createAuthConfig [post]
func (authConfigApi *AuthConfigApi) CreateAuthConfig(c *gin.Context) {
	var authConfig shop.AuthConfig
	err := c.ShouldBindJSON(&authConfig)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    authConfig.CreatedBy = utils.GetUserID(c)
	err = authConfigService.CreateAuthConfig(&authConfig)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteAuthConfig 删除authConfig表
// @Tags AuthConfig
// @Summary 删除authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.AuthConfig true "删除authConfig表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /authConfig/deleteAuthConfig [delete]
func (authConfigApi *AuthConfigApi) DeleteAuthConfig(c *gin.Context) {
	id := c.Query("id")
    userID := utils.GetUserID(c)
	err := authConfigService.DeleteAuthConfig(id,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteAuthConfigByIds 批量删除authConfig表
// @Tags AuthConfig
// @Summary 批量删除authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /authConfig/deleteAuthConfigByIds [delete]
func (authConfigApi *AuthConfigApi) DeleteAuthConfigByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
    userID := utils.GetUserID(c)
	err := authConfigService.DeleteAuthConfigByIds(ids,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateAuthConfig 更新authConfig表
// @Tags AuthConfig
// @Summary 更新authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.AuthConfig true "更新authConfig表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /authConfig/updateAuthConfig [put]
func (authConfigApi *AuthConfigApi) UpdateAuthConfig(c *gin.Context) {
	var authConfig shop.AuthConfig
	err := c.ShouldBindJSON(&authConfig)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    authConfig.UpdatedBy = utils.GetUserID(c)
	err = authConfigService.UpdateAuthConfig(authConfig)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindAuthConfig 用id查询authConfig表
// @Tags AuthConfig
// @Summary 用id查询authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.AuthConfig true "用id查询authConfig表"
// @Success 200 {object} response.Response{data=shop.AuthConfig},msg=string} "查询成功"
// @Router /authConfig/findAuthConfig [get]
func (authConfigApi *AuthConfigApi) FindAuthConfig(c *gin.Context) {
	id := c.Query("id")
	reauthConfig, err := authConfigService.GetAuthConfig(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(reauthConfig, c)
}

// GetAuthConfigList 分页获取authConfig表列表
// @Tags AuthConfig
// @Summary 分页获取authConfig表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.AuthConfigSearch true "分页获取authConfig表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /authConfig/getAuthConfigList [get]
func (authConfigApi *AuthConfigApi) GetAuthConfigList(c *gin.Context) {
	var pageInfo shopReq.AuthConfigSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := authConfigService.GetAuthConfigInfoList(pageInfo)
	if err != nil {
	    global.GVA_LOG.Error("获取失败!", zap.Error(err))
        response.FailWithMessage("获取失败", c)
        return
    }
    response.OkWithDetailed(response.PageResult{
        List:     list,
        Total:    total,
        Page:     pageInfo.Page,
        PageSize: pageInfo.PageSize,
    }, "获取成功", c)
}

// GetAuthConfigPublic 不需要鉴权的authConfig表接口
// @Tags AuthConfig
// @Summary 不需要鉴权的authConfig表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.AuthConfigSearch true "分页获取authConfig表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /authConfig/getAuthConfigPublic [get]
func (authConfigApi *AuthConfigApi) GetAuthConfigPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的authConfig表接口信息",
    }, "获取成功", c)
}
