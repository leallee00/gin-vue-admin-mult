import service from '@/utils/request'

// @Tags TenantInfoReviewProcess
// @Summary 创建tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewProcess true "创建tenantInfoReviewProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantInfoReviewProcess/createTenantInfoReviewProcess [post]
export const createTenantInfoReviewProcess = (data) => {
  return service({
    url: '/tenantInfoReviewProcess/createTenantInfoReviewProcess',
    method: 'post',
    data
  })
}

// @Tags TenantInfoReviewProcess
// @Summary 删除tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewProcess true "删除tenantInfoReviewProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfoReviewProcess/deleteTenantInfoReviewProcess [delete]
export const deleteTenantInfoReviewProcess = (params) => {
  return service({
    url: '/tenantInfoReviewProcess/deleteTenantInfoReviewProcess',
    method: 'delete',
    params
  })
}

// @Tags TenantInfoReviewProcess
// @Summary 批量删除tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantInfoReviewProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfoReviewProcess/deleteTenantInfoReviewProcess [delete]
export const deleteTenantInfoReviewProcessByIds = (params) => {
  return service({
    url: '/tenantInfoReviewProcess/deleteTenantInfoReviewProcessByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantInfoReviewProcess
// @Summary 更新tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfoReviewProcess true "更新tenantInfoReviewProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantInfoReviewProcess/updateTenantInfoReviewProcess [put]
export const updateTenantInfoReviewProcess = (data) => {
  return service({
    url: '/tenantInfoReviewProcess/updateTenantInfoReviewProcess',
    method: 'put',
    data
  })
}

// @Tags TenantInfoReviewProcess
// @Summary 用id查询tenantInfoReviewProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantInfoReviewProcess true "用id查询tenantInfoReviewProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantInfoReviewProcess/findTenantInfoReviewProcess [get]
export const findTenantInfoReviewProcess = (params) => {
  return service({
    url: '/tenantInfoReviewProcess/findTenantInfoReviewProcess',
    method: 'get',
    params
  })
}

// @Tags TenantInfoReviewProcess
// @Summary 分页获取tenantInfoReviewProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantInfoReviewProcess表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantInfoReviewProcess/getTenantInfoReviewProcessList [get]
export const getTenantInfoReviewProcessList = (params) => {
  return service({
    url: '/tenantInfoReviewProcess/getTenantInfoReviewProcessList',
    method: 'get',
    params
  })
}
