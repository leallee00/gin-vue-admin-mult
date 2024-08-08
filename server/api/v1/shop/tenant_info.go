package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantInfoApi struct {}

// CreateTenantInfo 创建tenantInfo表
// @Tags TenantInfo
// @Summary 创建tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfo true "创建tenantInfo表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantInfo/createTenantInfo [post]
func (tenantInfoApi *TenantInfoApi) CreateTenantInfo(c *gin.Context) {
	var tenantInfo shop.TenantInfo
	err := c.ShouldBindJSON(&tenantInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoService.CreateTenantInfo(&tenantInfo)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantInfo 删除tenantInfo表
// @Tags TenantInfo
// @Summary 删除tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfo true "删除tenantInfo表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantInfo/deleteTenantInfo [delete]
func (tenantInfoApi *TenantInfoApi) DeleteTenantInfo(c *gin.Context) {
	id := c.Query("id")
	err := tenantInfoService.DeleteTenantInfo(id)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantInfoByIds 批量删除tenantInfo表
// @Tags TenantInfo
// @Summary 批量删除tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantInfo/deleteTenantInfoByIds [delete]
func (tenantInfoApi *TenantInfoApi) DeleteTenantInfoByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
	err := tenantInfoService.DeleteTenantInfoByIds(ids)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantInfo 更新tenantInfo表
// @Tags TenantInfo
// @Summary 更新tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantInfo true "更新tenantInfo表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantInfo/updateTenantInfo [put]
func (tenantInfoApi *TenantInfoApi) UpdateTenantInfo(c *gin.Context) {
	var tenantInfo shop.TenantInfo
	err := c.ShouldBindJSON(&tenantInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantInfoService.UpdateTenantInfo(tenantInfo)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantInfo 用id查询tenantInfo表
// @Tags TenantInfo
// @Summary 用id查询tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantInfo true "用id查询tenantInfo表"
// @Success 200 {object} response.Response{data=shop.TenantInfo},msg=string} "查询成功"
// @Router /tenantInfo/findTenantInfo [get]
func (tenantInfoApi *TenantInfoApi) FindTenantInfo(c *gin.Context) {
	id := c.Query("id")
	retenantInfo, err := tenantInfoService.GetTenantInfo(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantInfo, c)
}

// GetTenantInfoList 分页获取tenantInfo表列表
// @Tags TenantInfo
// @Summary 分页获取tenantInfo表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoSearch true "分页获取tenantInfo表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantInfo/getTenantInfoList [get]
func (tenantInfoApi *TenantInfoApi) GetTenantInfoList(c *gin.Context) {
	var pageInfo shopReq.TenantInfoSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantInfoService.GetTenantInfoInfoList(pageInfo)
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

// GetTenantInfoPublic 不需要鉴权的tenantInfo表接口
// @Tags TenantInfo
// @Summary 不需要鉴权的tenantInfo表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantInfoSearch true "分页获取tenantInfo表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantInfo/getTenantInfoPublic [get]
func (tenantInfoApi *TenantInfoApi) GetTenantInfoPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantInfo表接口信息",
    }, "获取成功", c)
}
