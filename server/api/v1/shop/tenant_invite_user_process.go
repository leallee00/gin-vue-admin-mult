package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantInviteUserProcessApi struct {}

// CreateTenantInviteUserProcess 创建tenantInviteUserProcess表
// @Tags TenantInviteUserProcess
// @Summary 创建tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcess true "创建tenantInviteUserProcess表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantInviteUserProcess/createTenantInviteUserProcess [post]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) CreateTenantInviteUserProcess(c *gin.Context) {
	var tenantInviteUserProcess shop.TenantInviteUserProcess
	err := c.ShouldBindJSON(&tenantInviteUserProcess)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInviteUserProcessService.CreateTenantInviteUserProcess(&tenantInviteUserProcess)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantInviteUserProcess 删除tenantInviteUserProcess表
// @Tags TenantInviteUserProcess
// @Summary 删除tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcess true "删除tenantInviteUserProcess表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantInviteUserProcess/deleteTenantInviteUserProcess [delete]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) DeleteTenantInviteUserProcess(c *gin.Context) {
	ID := c.Query("ID")
	err := tenantInviteUserProcessService.DeleteTenantInviteUserProcess(ID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantInviteUserProcessByIds 批量删除tenantInviteUserProcess表
// @Tags TenantInviteUserProcess
// @Summary 批量删除tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantInviteUserProcess/deleteTenantInviteUserProcessByIds [delete]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) DeleteTenantInviteUserProcessByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := tenantInviteUserProcessService.DeleteTenantInviteUserProcessByIds(IDs)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantInviteUserProcess 更新tenantInviteUserProcess表
// @Tags TenantInviteUserProcess
// @Summary 更新tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcess true "更新tenantInviteUserProcess表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantInviteUserProcess/updateTenantInviteUserProcess [put]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) UpdateTenantInviteUserProcess(c *gin.Context) {
	var tenantInviteUserProcess shop.TenantInviteUserProcess
	err := c.ShouldBindJSON(&tenantInviteUserProcess)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInviteUserProcessService.UpdateTenantInviteUserProcess(tenantInviteUserProcess)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantInviteUserProcess 用id查询tenantInviteUserProcess表
// @Tags TenantInviteUserProcess
// @Summary 用id查询tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantInviteUserProcess true "用id查询tenantInviteUserProcess表"
// @Success 200 {object} response.Response{data=shop.TenantInviteUserProcess},msg=string} "查询成功"
// @Router /tenantInviteUserProcess/findTenantInviteUserProcess [get]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) FindTenantInviteUserProcess(c *gin.Context) {
	ID := c.Query("ID")
	retenantInviteUserProcess, err := tenantInviteUserProcessService.GetTenantInviteUserProcess(ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantInviteUserProcess, c)
}

// GetTenantInviteUserProcessList 分页获取tenantInviteUserProcess表列表
// @Tags TenantInviteUserProcess
// @Summary 分页获取tenantInviteUserProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInviteUserProcessSearch true "分页获取tenantInviteUserProcess表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantInviteUserProcess/getTenantInviteUserProcessList [get]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) GetTenantInviteUserProcessList(c *gin.Context) {
	var pageInfo shopReq.TenantInviteUserProcessSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantInviteUserProcessService.GetTenantInviteUserProcessInfoList(pageInfo)
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

// GetTenantInviteUserProcessPublic 不需要鉴权的tenantInviteUserProcess表接口
// @Tags TenantInviteUserProcess
// @Summary 不需要鉴权的tenantInviteUserProcess表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInviteUserProcessSearch true "分页获取tenantInviteUserProcess表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantInviteUserProcess/getTenantInviteUserProcessPublic [get]
func (tenantInviteUserProcessApi *TenantInviteUserProcessApi) GetTenantInviteUserProcessPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantInviteUserProcess表接口信息",
    }, "获取成功", c)
}
