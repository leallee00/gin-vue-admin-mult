import service from '@/utils/request'

// @Tags TenantInfoReviewLog
// @Summary 创建tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewLog true "创建tenantInfoReviewLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantInfoReviewLog/createTenantInfoReviewLog [post]
export const createTenantInfoReviewLog = (data) => {
  return service({
    url: '/tenantInfoReviewLog/createTenantInfoReviewLog',
    method: 'post',
    data
  })
}

// @Tags TenantInfoReviewLog
// @Summary 删除tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewLog true "删除tenantInfoReviewLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfoReviewLog/deleteTenantInfoReviewLog [delete]
export const deleteTenantInfoReviewLog = (params) => {
  return service({
    url: '/tenantInfoReviewLog/deleteTenantInfoReviewLog',
    method: 'delete',
    params
  })
}

// @Tags TenantInfoReviewLog
// @Summary 批量删除tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantInfoReviewLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfoReviewLog/deleteTenantInfoReviewLog [delete]
export const deleteTenantInfoReviewLogByIds = (params) => {
  return service({
    url: '/tenantInfoReviewLog/deleteTenantInfoReviewLogByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantInfoReviewLog
// @Summary 更新tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewLog true "更新tenantInfoReviewLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantInfoReviewLog/updateTenantInfoReviewLog [put]
export const updateTenantInfoReviewLog = (data) => {
  return service({
    url: '/tenantInfoReviewLog/updateTenantInfoReviewLog',
    method: 'put',
    data
  })
}

// @Tags TenantInfoReviewLog
// @Summary 用id查询tenantInfoReviewLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantInfoReviewLog true "用id查询tenantInfoReviewLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantInfoReviewLog/findTenantInfoReviewLog [get]
export const findTenantInfoReviewLog = (params) => {
  return service({
    url: '/tenantInfoReviewLog/findTenantInfoReviewLog',
    method: 'get',
    params
  })
}

// @Tags TenantInfoReviewLog
// @Summary 分页获取tenantInfoReviewLog表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantInfoReviewLog表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantInfoReviewLog/getTenantInfoReviewLogList [get]
export const getTenantInfoReviewLogList = (params) => {
  return service({
    url: '/tenantInfoReviewLog/getTenantInfoReviewLogList',
    method: 'get',
    params
  })
}
