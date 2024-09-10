package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
    "github.com/flipped-aurora/gin-vue-admin/server/model/shop"
    shopReq "github.com/flipped-aurora/gin-vue-admin/server/model/shop/request"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type TenantUserRelApi struct {}

// CreateTenantUserRel 创建tenantUserRel表
// @Tags TenantUserRel
// @Summary 创建tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantUserRel true "创建tenantUserRel表"
// @Success 200 {object} response.Response{msg=string} "创建成功"
// @Router /tenantUserRel/createTenantUserRel [post]
func (tenantUserRelApi *TenantUserRelApi) CreateTenantUserRel(c *gin.Context) {
	var tenantUserRel shop.TenantUserRel
	err := c.ShouldBindJSON(&tenantUserRel)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantUserRelService.CreateTenantUserRel(&tenantUserRel)
	if err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
    response.OkWithMessage("创建成功", c)
}

// DeleteTenantUserRel 删除tenantUserRel表
// @Tags TenantUserRel
// @Summary 删除tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantUserRel true "删除tenantUserRel表"
// @Success 200 {object} response.Response{msg=string} "删除成功"
// @Router /tenantUserRel/deleteTenantUserRel [delete]
func (tenantUserRelApi *TenantUserRelApi) DeleteTenantUserRel(c *gin.Context) {
	ID := c.Query("ID")
	err := tenantUserRelService.DeleteTenantUserRel(ID)
	if err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

// DeleteTenantUserRelByIds 批量删除tenantUserRel表
// @Tags TenantUserRel
// @Summary 批量删除tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Success 200 {object} response.Response{msg=string} "批量删除成功"
// @Router /tenantUserRel/deleteTenantUserRelByIds [delete]
func (tenantUserRelApi *TenantUserRelApi) DeleteTenantUserRelByIds(c *gin.Context) {
	IDs := c.QueryArray("IDs[]")
	err := tenantUserRelService.DeleteTenantUserRelByIds(IDs)
	if err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

// UpdateTenantUserRel 更新tenantUserRel表
// @Tags TenantUserRel
// @Summary 更新tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body shop.TenantUserRel true "更新tenantUserRel表"
// @Success 200 {object} response.Response{msg=string} "更新成功"
// @Router /tenantUserRel/updateTenantUserRel [put]
func (tenantUserRelApi *TenantUserRelApi) UpdateTenantUserRel(c *gin.Context) {
	var tenantUserRel shop.TenantUserRel
	err := c.ShouldBindJSON(&tenantUserRel)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = tenantUserRelService.UpdateTenantUserRel(tenantUserRel)
	if err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

// FindTenantUserRel 用id查询tenantUserRel表
// @Tags TenantUserRel
// @Summary 用id查询tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shop.TenantUserRel true "用id查询tenantUserRel表"
// @Success 200 {object} response.Response{data=shop.TenantUserRel},msg=string} "查询成功"
// @Router /tenantUserRel/findTenantUserRel [get]
func (tenantUserRelApi *TenantUserRelApi) FindTenantUserRel(c *gin.Context) {
	ID := c.Query("ID")
	retenantUserRel, err := tenantUserRelService.GetTenantUserRel(ID)
	if err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(retenantUserRel, c)
}

// GetTenantUserRelList 分页获取tenantUserRel表列表
// @Tags TenantUserRel
// @Summary 分页获取tenantUserRel表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantUserRelSearch true "分页获取tenantUserRel表列表"
// @Success 200 {object} response.Response{data=response.PageResult,msg=string} "获取成功"
// @Router /tenantUserRel/getTenantUserRelList [get]
func (tenantUserRelApi *TenantUserRelApi) GetTenantUserRelList(c *gin.Context) {
	var pageInfo shopReq.TenantUserRelSearch
	err := c.ShouldBindQuery(&pageInfo)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := tenantUserRelService.GetTenantUserRelInfoList(pageInfo)
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

// GetTenantUserRelPublic 不需要鉴权的tenantUserRel表接口
// @Tags TenantUserRel
// @Summary 不需要鉴权的tenantUserRel表接口
// @accept application/json
// @Produce application/json
// @Param data query shopReq.TenantUserRelSearch true "分页获取tenantUserRel表列表"
// @Success 200 {object} response.Response{data=object,msg=string} "获取成功"
// @Router /tenantUserRel/getTenantUserRelPublic [get]
func (tenantUserRelApi *TenantUserRelApi) GetTenantUserRelPublic(c *gin.Context) {
    // 此接口不需要鉴权
    // 示例为返回了一个固定的消息接口，一般本接口用于C端服务，需要自己实现业务逻辑
    response.OkWithDetailed(gin.H{
       "info": "不需要鉴权的tenantUserRel表接口信息",
    }, "获取成功", c)
}
