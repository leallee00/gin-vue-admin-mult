package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type UserApplyJoinTenantProcessFlowApi struct {}

// CreateUserApplyJoinTenantProcessFlow 创建userApplyJoinTenantProcessFlow表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 创建userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcessFlow true "创建userApplyJoinTenantProcessFlow表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /userApplyJoinTenantProcessFlow/createUserApplyJoinTenantProcessFlow [post]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) CreateUserApplyJoinTenantProcessFlow(c *gin.Context) {
	var userApplyJoinTenantProcessFlow shop.UserApplyJoinTenantProcessFlow
	err := c.ShouldBindJSON(&userApplyJoinTenantProcessFlow)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = userApplyJoinTenantProcessFlowService.CreateUserApplyJoinTenantProcessFlow(&userApplyJoinTenantProcessFlow)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteUserApplyJoinTenantProcessFlow 删除userApplyJoinTenantProcessFlow表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 删除userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcessFlow true "删除userApplyJoinTenantProcessFlow表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlow [delete]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) DeleteUserApplyJoinTenantProcessFlow(c *gin.Context) {
	ID := c.Query("ID")
	err := userApplyJoinTenantProcessFlowService.DeleteUserApplyJoinTenantProcessFlow(ID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteUserApplyJoinTenantProcessFlowByIds 批量删除userApplyJoinTenantProcessFlow表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 批量删除userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlowByIds [delete]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) DeleteUserApplyJoinTenantProcessFlowByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := userApplyJoinTenantProcessFlowService.DeleteUserApplyJoinTenantProcessFlowByIds(IDs)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateUserApplyJoinTenantProcessFlow 更新userApplyJoinTenantProcessFlow表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 更新userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcessFlow true "更新userApplyJoinTenantProcessFlow表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /userApplyJoinTenantProcessFlow/updateUserApplyJoinTenantProcessFlow [put]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) UpdateUserApplyJoinTenantProcessFlow(c *gin.Context) {
	var userApplyJoinTenantProcessFlow shop.UserApplyJoinTenantProcessFlow
	err := c.ShouldBindJSON(&userApplyJoinTenantProcessFlow)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = userApplyJoinTenantProcessFlowService.UpdateUserApplyJoinTenantProcessFlow(userApplyJoinTenantProcessFlow)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindUserApplyJoinTenantProcessFlow 用id查询userApplyJoinTenantProcessFlow表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 用id查询userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.UserApplyJoinTenantProcessFlow true "用id查询userApplyJoinTenantProcessFlow表"
// @Success 200 {object} response.Response{data=shop.UserApplyJoinTenantProcessFlow},msg=string} "查询成功"
// @Router /userApplyJoinTenantProcessFlow/findUserApplyJoinTenantProcessFlow [get]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) FindUserApplyJoinTenantProcessFlow(c *gin.Context) {
	ID := c.Query("ID")
	reuserApplyJoinTenantProcessFlow, err := userApplyJoinTenantProcessFlowService.GetUserApplyJoinTenantProcessFlow(ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(reuserApplyJoinTenantProcessFlow, c)
}

// GetUserApplyJoinTenantProcessFlowList 分页获取userApplyJoinTenantProcessFlow表列表
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 分页获取userApplyJoinTenantProcessFlow表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserApplyJoinTenantProcessFlowSearch true "分页获取userApplyJoinTenantProcessFlow表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /userApplyJoinTenantProcessFlow/getUserApplyJoinTenantProcessFlowList [get]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) GetUserApplyJoinTenantProcessFlowList(c *gin.Context) {
	var pageInfo shopReq.UserApplyJoinTenantProcessFlowSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := userApplyJoinTenantProcessFlowService.GetUserApplyJoinTenantProcessFlowInfoList(pageInfo)
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

// GetUserApplyJoinTenantProcessFlowPublic 不需要鉴权的userApplyJoinTenantProcessFlow表接口
// @Tags UserApplyJoinTenantProcessFlow
// @Summary 不需要鉴权的userApplyJoinTenantProcessFlow表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserApplyJoinTenantProcessFlowSearch true "分页获取userApplyJoinTenantProcessFlow表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /userApplyJoinTenantProcessFlow/getUserApplyJoinTenantProcessFlowPublic [get]
func (userApplyJoinTenantProcessFlowApi *UserApplyJoinTenantProcessFlowApi) GetUserApplyJoinTenantProcessFlowPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的userApplyJoinTenantProcessFlow表接口信息",
    }, "获取成功", c)
}
