package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantInfoReviewProcessApi struct {}

// CreateTenantInfoReviewProcess 创建tenantInfoReviewProcess表
// @Tags TenantInfoReviewProcess
// @Summary 创建tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewProcess true "创建tenantInfoReviewProcess表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantInfoReviewProcess/createTenantInfoReviewProcess [post]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) CreateTenantInfoReviewProcess(c *gin.Context) {
	var tenantInfoReviewProcess shop.TenantInfoReviewProcess
	err := c.ShouldBindJSON(&tenantInfoReviewProcess)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoReviewProcessService.CreateTenantInfoReviewProcess(&tenantInfoReviewProcess)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantInfoReviewProcess 删除tenantInfoReviewProcess表
// @Tags TenantInfoReviewProcess
// @Summary 删除tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewProcess true "删除tenantInfoReviewProcess表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantInfoReviewProcess/deleteTenantInfoReviewProcess [delete]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) DeleteTenantInfoReviewProcess(c *gin.Context) {
	id := c.Query("id")
	err := tenantInfoReviewProcessService.DeleteTenantInfoReviewProcess(id)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantInfoReviewProcessByIds 批量删除tenantInfoReviewProcess表
// @Tags TenantInfoReviewProcess
// @Summary 批量删除tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantInfoReviewProcess/deleteTenantInfoReviewProcessByIds [delete]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) DeleteTenantInfoReviewProcessByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
	err := tenantInfoReviewProcessService.DeleteTenantInfoReviewProcessByIds(ids)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantInfoReviewProcess 更新tenantInfoReviewProcess表
// @Tags TenantInfoReviewProcess
// @Summary 更新tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfoReviewProcess true "更新tenantInfoReviewProcess表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantInfoReviewProcess/updateTenantInfoReviewProcess [put]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) UpdateTenantInfoReviewProcess(c *gin.Context) {
	var tenantInfoReviewProcess shop.TenantInfoReviewProcess
	err := c.ShouldBindJSON(&tenantInfoReviewProcess)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoReviewProcessService.UpdateTenantInfoReviewProcess(tenantInfoReviewProcess)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantInfoReviewProcess 用id查询tenantInfoReviewProcess表
// @Tags TenantInfoReviewProcess
// @Summary 用id查询tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantInfoReviewProcess true "用id查询tenantInfoReviewProcess表"
// @Success 200 {object} response.Response{data=shop.TenantInfoReviewProcess},msg=string} "查询成功"
// @Router /tenantInfoReviewProcess/findTenantInfoReviewProcess [get]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) FindTenantInfoReviewProcess(c *gin.Context) {
	id := c.Query("id")
	retenantInfoReviewProcess, err := tenantInfoReviewProcessService.GetTenantInfoReviewProcess(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantInfoReviewProcess, c)
}

// GetTenantInfoReviewProcessList 分页获取tenantInfoReviewProcess表列表
// @Tags TenantInfoReviewProcess
// @Summary 分页获取tenantInfoReviewProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoReviewProcessSearch true "分页获取tenantInfoReviewProcess表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantInfoReviewProcess/getTenantInfoReviewProcessList [get]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) GetTenantInfoReviewProcessList(c *gin.Context) {
	var pageInfo shopReq.TenantInfoReviewProcessSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantInfoReviewProcessService.GetTenantInfoReviewProcessInfoList(pageInfo)
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

// GetTenantInfoReviewProcessPublic 不需要鉴权的tenantInfoReviewProcess表接口
// @Tags TenantInfoReviewProcess
// @Summary 不需要鉴权的tenantInfoReviewProcess表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoReviewProcessSearch true "分页获取tenantInfoReviewProcess表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantInfoReviewProcess/getTenantInfoReviewProcessPublic [get]
func (tenantInfoReviewProcessApi *TenantInfoReviewProcessApi) GetTenantInfoReviewProcessPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantInfoReviewProcess表接口信息",
    }, "获取成功", c)
}
