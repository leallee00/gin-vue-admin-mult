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

type UserAuthInfoApi struct {}

// CreateUserAuthInfo 创建userAuthInfo表
// @Tags UserAuthInfo
// @Summary 创建userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserAuthInfo true "创建userAuthInfo表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /userAuthInfo/createUserAuthInfo [post]
func (userAuthInfoApi *UserAuthInfoApi) CreateUserAuthInfo(c *gin.Context) {
	var userAuthInfo shop.UserAuthInfo
	err := c.ShouldBindJSON(&userAuthInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    userAuthInfo.CreatedBy = utils.GetUserID(c)
	err = userAuthInfoService.CreateUserAuthInfo(&userAuthInfo)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteUserAuthInfo 删除userAuthInfo表
// @Tags UserAuthInfo
// @Summary 删除userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserAuthInfo true "删除userAuthInfo表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /userAuthInfo/deleteUserAuthInfo [delete]
func (userAuthInfoApi *UserAuthInfoApi) DeleteUserAuthInfo(c *gin.Context) {
	ID := c.Query("ID")
    userID := utils.GetUserID(c)
	err := userAuthInfoService.DeleteUserAuthInfo(ID,userID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteUserAuthInfoByIds 批量删除userAuthInfo表
// @Tags UserAuthInfo
// @Summary 批量删除userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /userAuthInfo/deleteUserAuthInfoByIds [delete]
func (userAuthInfoApi *UserAuthInfoApi) DeleteUserAuthInfoByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
    userID := utils.GetUserID(c)
	err := userAuthInfoService.DeleteUserAuthInfoByIds(IDs,userID)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateUserAuthInfo 更新userAuthInfo表
// @Tags UserAuthInfo
// @Summary 更新userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.UserAuthInfo true "更新userAuthInfo表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /userAuthInfo/updateUserAuthInfo [put]
func (userAuthInfoApi *UserAuthInfoApi) UpdateUserAuthInfo(c *gin.Context) {
	var userAuthInfo shop.UserAuthInfo
	err := c.ShouldBindJSON(&userAuthInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
    userAuthInfo.UpdatedBy = utils.GetUserID(c)
	err = userAuthInfoService.UpdateUserAuthInfo(userAuthInfo)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindUserAuthInfo 用id查询userAuthInfo表
// @Tags UserAuthInfo
// @Summary 用id查询userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.UserAuthInfo true "用id查询userAuthInfo表"
// @Success 200 {object} response.Response{data=shop.UserAuthInfo},msg=string} "查询成功"
// @Router /userAuthInfo/findUserAuthInfo [get]
func (userAuthInfoApi *UserAuthInfoApi) FindUserAuthInfo(c *gin.Context) {
	ID := c.Query("ID")
	reuserAuthInfo, err := userAuthInfoService.GetUserAuthInfo(ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(reuserAuthInfo, c)
}

// GetUserAuthInfoList 分页获取userAuthInfo表列表
// @Tags UserAuthInfo
// @Summary 分页获取userAuthInfo表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserAuthInfoSearch true "分页获取userAuthInfo表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /userAuthInfo/getUserAuthInfoList [get]
func (userAuthInfoApi *UserAuthInfoApi) GetUserAuthInfoList(c *gin.Context) {
	var pageInfo shopReq.UserAuthInfoSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := userAuthInfoService.GetUserAuthInfoInfoList(pageInfo)
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

// GetUserAuthInfoPublic 不需要鉴权的userAuthInfo表接口
// @Tags UserAuthInfo
// @Summary 不需要鉴权的userAuthInfo表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.UserAuthInfoSearch true "分页获取userAuthInfo表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /userAuthInfo/getUserAuthInfoPublic [get]
func (userAuthInfoApi *UserAuthInfoApi) GetUserAuthInfoPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的userAuthInfo表接口信息",
    }, "获取成功", c)
}
