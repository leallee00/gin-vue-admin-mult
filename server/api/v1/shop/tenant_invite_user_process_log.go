package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantInviteUserProcessLogApi struct {}

// CreateTenantInviteUserProcessLog 创建tenantInviteUserProcessLog表
// @Tags TenantInviteUserProcessLog
// @Summary 创建tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcessLog true "创建tenantInviteUserProcessLog表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantInviteUserProcessLog/createTenantInviteUserProcessLog [post]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) CreateTenantInviteUserProcessLog(c *gin.Context) {
	var tenantInviteUserProcessLog shop.TenantInviteUserProcessLog
	err := c.ShouldBindJSON(&tenantInviteUserProcessLog)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInviteUserProcessLogService.CreateTenantInviteUserProcessLog(&tenantInviteUserProcessLog)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantInviteUserProcessLog 删除tenantInviteUserProcessLog表
// @Tags TenantInviteUserProcessLog
// @Summary 删除tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcessLog true "删除tenantInviteUserProcessLog表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantInviteUserProcessLog/deleteTenantInviteUserProcessLog [delete]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) DeleteTenantInviteUserProcessLog(c *gin.Context) {
	ID := c.Query("ID")
	err := tenantInviteUserProcessLogService.DeleteTenantInviteUserProcessLog(ID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantInviteUserProcessLogByIds 批量删除tenantInviteUserProcessLog表
// @Tags TenantInviteUserProcessLog
// @Summary 批量删除tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantInviteUserProcessLog/deleteTenantInviteUserProcessLogByIds [delete]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) DeleteTenantInviteUserProcessLogByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := tenantInviteUserProcessLogService.DeleteTenantInviteUserProcessLogByIds(IDs)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantInviteUserProcessLog 更新tenantInviteUserProcessLog表
// @Tags TenantInviteUserProcessLog
// @Summary 更新tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInviteUserProcessLog true "更新tenantInviteUserProcessLog表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantInviteUserProcessLog/updateTenantInviteUserProcessLog [put]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) UpdateTenantInviteUserProcessLog(c *gin.Context) {
	var tenantInviteUserProcessLog shop.TenantInviteUserProcessLog
	err := c.ShouldBindJSON(&tenantInviteUserProcessLog)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInviteUserProcessLogService.UpdateTenantInviteUserProcessLog(tenantInviteUserProcessLog)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantInviteUserProcessLog 用id查询tenantInviteUserProcessLog表
// @Tags TenantInviteUserProcessLog
// @Summary 用id查询tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantInviteUserProcessLog true "用id查询tenantInviteUserProcessLog表"
// @Success 200 {object} response.Response{data=shop.TenantInviteUserProcessLog},msg=string} "查询成功"
// @Router /tenantInviteUserProcessLog/findTenantInviteUserProcessLog [get]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) FindTenantInviteUserProcessLog(c *gin.Context) {
	ID := c.Query("ID")
	retenantInviteUserProcessLog, err := tenantInviteUserProcessLogService.GetTenantInviteUserProcessLog(ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantInviteUserProcessLog, c)
}

// GetTenantInviteUserProcessLogList 分页获取tenantInviteUserProcessLog表列表
// @Tags TenantInviteUserProcessLog
// @Summary 分页获取tenantInviteUserProcessLog表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInviteUserProcessLogSearch true "分页获取tenantInviteUserProcessLog表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantInviteUserProcessLog/getTenantInviteUserProcessLogList [get]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) GetTenantInviteUserProcessLogList(c *gin.Context) {
	var pageInfo shopReq.TenantInviteUserProcessLogSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantInviteUserProcessLogService.GetTenantInviteUserProcessLogInfoList(pageInfo)
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

// GetTenantInviteUserProcessLogPublic 不需要鉴权的tenantInviteUserProcessLog表接口
// @Tags TenantInviteUserProcessLog
// @Summary 不需要鉴权的tenantInviteUserProcessLog表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInviteUserProcessLogSearch true "分页获取tenantInviteUserProcessLog表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantInviteUserProcessLog/getTenantInviteUserProcessLogPublic [get]
func (tenantInviteUserProcessLogApi *TenantInviteUserProcessLogApi) GetTenantInviteUserProcessLogPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantInviteUserProcessLog表接口信息",
    }, "获取成功", c)
}
