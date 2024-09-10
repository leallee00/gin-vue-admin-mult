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

type AuthApi struct {}

// CreateAuth 创建auth表
// @Tags Auth
// @Summary 创建auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Auth true "创建auth表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /auth/createAuth [post]
func (authApi *AuthApi) CreateAuth(c *gin.Context) {
	var auth shop.Auth
	err := c.ShouldBindJSON(&auth)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    auth.CreatedBy = utils.GetUserID(c)
	err = authService.CreateAuth(&auth)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteAuth 删除auth表
// @Tags Auth
// @Summary 删除auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Auth true "删除auth表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /auth/deleteAuth [delete]
func (authApi *AuthApi) DeleteAuth(c *gin.Context) {
	id := c.Query("id")
    userID := utils.GetUserID(c)
	err := authService.DeleteAuth(id,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteAuthByIds 批量删除auth表
// @Tags Auth
// @Summary 批量删除auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /auth/deleteAuthByIds [delete]
func (authApi *AuthApi) DeleteAuthByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
    userID := utils.GetUserID(c)
	err := authService.DeleteAuthByIds(ids,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateAuth 更新auth表
// @Tags Auth
// @Summary 更新auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Auth true "更新auth表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /auth/updateAuth [put]
func (authApi *AuthApi) UpdateAuth(c *gin.Context) {
	var auth shop.Auth
	err := c.ShouldBindJSON(&auth)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    auth.UpdatedBy = utils.GetUserID(c)
	err = authService.UpdateAuth(auth)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindAuth 用id查询auth表
// @Tags Auth
// @Summary 用id查询auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.Auth true "用id查询auth表"
// @Success 200 {object} response.Response{data=shop.Auth},msg=string} "查询成功"
// @Router /auth/findAuth [get]
func (authApi *AuthApi) FindAuth(c *gin.Context) {
	id := c.Query("id")
	reauth, err := authService.GetAuth(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(reauth, c)
}

// GetAuthList 分页获取auth表列表
// @Tags Auth
// @Summary 分页获取auth表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.AuthSearch true "分页获取auth表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /auth/getAuthList [get]
func (authApi *AuthApi) GetAuthList(c *gin.Context) {
	var pageInfo shopReq.AuthSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := authService.GetAuthInfoList(pageInfo)
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

// GetAuthPublic 不需要鉴权的auth表接口
// @Tags Auth
// @Summary 不需要鉴权的auth表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.AuthSearch true "分页获取auth表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /auth/getAuthPublic [get]
func (authApi *AuthApi) GetAuthPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的auth表接口信息",
    }, "获取成功", c)
}
