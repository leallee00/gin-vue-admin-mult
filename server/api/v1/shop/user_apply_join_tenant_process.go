package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/shop"
	shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type UserApplyJoinTenantProcessApi struct{}

// CreateUserApplyJoinTenantProcess 创建userApplyJoinTenantProcess表
// @Tags UserApplyJoinTenantProcess
// @Summary 创建userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcess true "创建userApplyJoinTenantProcess表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /userApplyJoinTenantProcess/createUserApplyJoinTenantProcess [post]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) CreateUserApplyJoinTenantProcess(c *gin.Context) {
	var userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess
	err := c.ShouldBindJSON(&userApplyJoinTenantProcess)
	if err != nil {
		global.GVA_LOG.Error("解析json失败!", zap.Error(err))
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = userApplyJoinTenantProcessService.CreateUserApplyJoinTenantProcess(&userApplyJoinTenantProcess)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

// DeleteUserApplyJoinTenantProcess 删除userApplyJoinTenantProcess表
// @Tags UserApplyJoinTenantProcess
// @Summary 删除userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcess true "删除userApplyJoinTenantProcess表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcess [delete]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) DeleteUserApplyJoinTenantProcess(c *gin.Context) {
	ID := c.Query("ID")
	err := userApplyJoinTenantProcessService.DeleteUserApplyJoinTenantProcess(ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteUserApplyJoinTenantProcessByIds 批量删除userApplyJoinTenantProcess表
// @Tags UserApplyJoinTenantProcess
// @Summary 批量删除userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcessByIds [delete]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) DeleteUserApplyJoinTenantProcessByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := userApplyJoinTenantProcessService.DeleteUserApplyJoinTenantProcessByIds(IDs)
	if err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateUserApplyJoinTenantProcess 更新userApplyJoinTenantProcess表
// @Tags UserApplyJoinTenantProcess
// @Summary 更新userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserApplyJoinTenantProcess true "更新userApplyJoinTenantProcess表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /userApplyJoinTenantProcess/updateUserApplyJoinTenantProcess [put]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) UpdateUserApplyJoinTenantProcess(c *gin.Context) {
	var userApplyJoinTenantProcess shop.UserApplyJoinTenantProcess
	err := c.ShouldBindJSON(&userApplyJoinTenantProcess)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = userApplyJoinTenantProcessService.UpdateUserApplyJoinTenantProcess(userApplyJoinTenantProcess)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}

	response.OkWithMessage("更新成功", c)
}

// FindUserApplyJoinTenantProcess 用id查询userApplyJoinTenantProcess表
// @Tags UserApplyJoinTenantProcess
// @Summary 用id查询userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.UserApplyJoinTenantProcess true "用id查询userApplyJoinTenantProcess表"
// @Success 200 {object} response.Response{data=shop.UserApplyJoinTenantProcess},msg=string} "查询成功"
// @Router /userApplyJoinTenantProcess/findUserApplyJoinTenantProcess [get]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) FindUserApplyJoinTenantProcess(c *gin.Context) {
	ID := c.Query("ID")
	reuserApplyJoinTenantProcess, err := userApplyJoinTenantProcessService.GetUserApplyJoinTenantProcess(ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(reuserApplyJoinTenantProcess, c)
}

// GetUserApplyJoinTenantProcessList 分页获取userApplyJoinTenantProcess表列表
// @Tags UserApplyJoinTenantProcess
// @Summary 分页获取userApplyJoinTenantProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserApplyJoinTenantProcessSearch true "分页获取userApplyJoinTenantProcess表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /userApplyJoinTenantProcess/getUserApplyJoinTenantProcessList [get]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) GetUserApplyJoinTenantProcessList(c *gin.Context) {
	var pageInfo shopReq.UserApplyJoinTenantProcessSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := userApplyJoinTenantProcessService.GetUserApplyJoinTenantProcessInfoList(pageInfo)
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

// GetUserApplyJoinTenantProcessPublic 不需要鉴权的userApplyJoinTenantProcess表接口
// @Tags UserApplyJoinTenantProcess
// @Summary 不需要鉴权的userApplyJoinTenantProcess表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserApplyJoinTenantProcessSearch true "分页获取userApplyJoinTenantProcess表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /userApplyJoinTenantProcess/getUserApplyJoinTenantProcessPublic [get]
func (userApplyJoinTenantProcessApi *UserApplyJoinTenantProcessApi) GetUserApplyJoinTenantProcessPublic(c *gin.Context) {
	// 此接口不需要鉴权
	// 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
	response.OkWithDetailed(gin.H{
		"info": "不需要鉴权的userApplyJoinTenantProcess表接口信息",
	}, "获取成功", c)
}
