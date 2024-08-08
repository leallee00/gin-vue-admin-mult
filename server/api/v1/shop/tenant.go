package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantApi struct {}

// CreateTenant 创建tenant表
// @Tags Tenant
// @Summary 创建tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Tenant true "创建tenant表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenant/createTenant [post]
func (tenantApi *TenantApi) CreateTenant(c *gin.Context) {
	var tenant shop.Tenant
	err := c.ShouldBindJSON(&tenant)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantService.CreateTenant(&tenant)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenant 删除tenant表
// @Tags Tenant
// @Summary 删除tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Tenant true "删除tenant表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenant/deleteTenant [delete]
func (tenantApi *TenantApi) DeleteTenant(c *gin.Context) {
	id := c.Query("id")
	err := tenantService.DeleteTenant(id)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantByIds 批量删除tenant表
// @Tags Tenant
// @Summary 批量删除tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenant/deleteTenantByIds [delete]
func (tenantApi *TenantApi) DeleteTenantByIds(c *gin.Context) {
	ids := c.QueryArray("ids[]")
	err := tenantService.DeleteTenantByIds(ids)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenant 更新tenant表
// @Tags Tenant
// @Summary 更新tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.Tenant true "更新tenant表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenant/updateTenant [put]
func (tenantApi *TenantApi) UpdateTenant(c *gin.Context) {
	var tenant shop.Tenant
	err := c.ShouldBindJSON(&tenant)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantService.UpdateTenant(tenant)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenant 用id查询tenant表
// @Tags Tenant
// @Summary 用id查询tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.Tenant true "用id查询tenant表"
// @Success 200 {object} response.Response{data=shop.Tenant},msg=string} "查询成功"
// @Router /tenant/findTenant [get]
func (tenantApi *TenantApi) FindTenant(c *gin.Context) {
	id := c.Query("id")
	retenant, err := tenantService.GetTenant(id)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenant, c)
}

// GetTenantList 分页获取tenant表列表
// @Tags Tenant
// @Summary 分页获取tenant表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantSearch true "分页获取tenant表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenant/getTenantList [get]
func (tenantApi *TenantApi) GetTenantList(c *gin.Context) {
	var pageInfo shopReq.TenantSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantService.GetTenantInfoList(pageInfo)
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

// GetTenantPublic 不需要鉴权的tenant表接口
// @Tags Tenant
// @Summary 不需要鉴权的tenant表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantSearch true "分页获取tenant表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenant/getTenantPublic [get]
func (tenantApi *TenantApi) GetTenantPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenant表接口信息",
    }, "获取成功", c)
}
