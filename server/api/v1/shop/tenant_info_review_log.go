package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantInfoReviewLogApi struct {}

// CreateTenantInfoReviewLog 创建tenantInfoReviewLog表
// @Tags TenantInfoReviewLog
// @Summary 创建tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewLog true "创建tenantInfoReviewLog表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantInfoReviewLog/createTenantInfoReviewLog [post]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) CreateTenantInfoReviewLog(c *gin.Context) {
	var tenantInfoReviewLog shop.TenantInfoReviewLog
	err := c.ShouldBindJSON(&tenantInfoReviewLog)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoReviewLogService.CreateTenantInfoReviewLog(&tenantInfoReviewLog)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantInfoReviewLog 删除tenantInfoReviewLog表
// @Tags TenantInfoReviewLog
// @Summary 删除tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewLog true "删除tenantInfoReviewLog表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantInfoReviewLog/deleteTenantInfoReviewLog [delete]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) DeleteTenantInfoReviewLog(c *gin.Context) {
	id := c.Query("id")
	err := tenantInfoReviewLogService.DeleteTenantInfoReviewLog(id)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantInfoReviewLogByIds 批量删除tenantInfoReviewLog表
// @Tags TenantInfoReviewLog
// @Summary 批量删除tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantInfoReviewLog/deleteTenantInfoReviewLogByIds [delete]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) DeleteTenantInfoReviewLogByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
	err := tenantInfoReviewLogService.DeleteTenantInfoReviewLogByIds(ids)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantInfoReviewLog 更新tenantInfoReviewLog表
// @Tags TenantInfoReviewLog
// @Summary 更新tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewLog true "更新tenantInfoReviewLog表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantInfoReviewLog/updateTenantInfoReviewLog [put]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) UpdateTenantInfoReviewLog(c *gin.Context) {
	var tenantInfoReviewLog shop.TenantInfoReviewLog
	err := c.ShouldBindJSON(&tenantInfoReviewLog)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoReviewLogService.UpdateTenantInfoReviewLog(tenantInfoReviewLog)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantInfoReviewLog 用id查询tenantInfoReviewLog表
// @Tags TenantInfoReviewLog
// @Summary 用id查询tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantInfoReviewLog true "用id查询tenantInfoReviewLog表"
// @Success 200 {object} response.Response{data=shop.TenantInfoReviewLog},msg=string} "查询成功"
// @Router /tenantInfoReviewLog/findTenantInfoReviewLog [get]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) FindTenantInfoReviewLog(c *gin.Context) {
	id := c.Query("id")
	retenantInfoReviewLog, err := tenantInfoReviewLogService.GetTenantInfoReviewLog(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantInfoReviewLog, c)
}

// GetTenantInfoReviewLogList 分页获取tenantInfoReviewLog表列表
// @Tags TenantInfoReviewLog
// @Summary 分页获取tenantInfoReviewLog表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoReviewLogSearch true "分页获取tenantInfoReviewLog表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantInfoReviewLog/getTenantInfoReviewLogList [get]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) GetTenantInfoReviewLogList(c *gin.Context) {
	var pageInfo shopReq.TenantInfoReviewLogSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantInfoReviewLogService.GetTenantInfoReviewLogInfoList(pageInfo)
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

// GetTenantInfoReviewLogPublic 不需要鉴权的tenantInfoReviewLog表接口
// @Tags TenantInfoReviewLog
// @Summary 不需要鉴权的tenantInfoReviewLog表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoReviewLogSearch true "分页获取tenantInfoReviewLog表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantInfoReviewLog/getTenantInfoReviewLogPublic [get]
func (tenantInfoReviewLogApi *TenantInfoReviewLogApi) GetTenantInfoReviewLogPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantInfoReviewLog表接口信息",
    }, "获取成功", c)
}
