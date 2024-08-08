import service from '@/utils/request'

// @Tags TenantInfo
// @Summary 创建tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfo true "创建tenantInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantInfo/createTenantInfo [post]
export const createTenantInfo = (data) => {
  return service({
    url: '/tenantInfo/createTenantInfo',
    method: 'post',
    data
  })
}

// @Tags TenantInfo
// @Summary 删除tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfo true "删除tenantInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfo/deleteTenantInfo [delete]
export const deleteTenantInfo = (params) => {
  return service({
    url: '/tenantInfo/deleteTenantInfo',
    method: 'delete',
    params
  })
}

// @Tags TenantInfo
// @Summary 批量删除tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInfo/deleteTenantInfo [delete]
export const deleteTenantInfoByIds = (params) => {
  return service({
    url: '/tenantInfo/deleteTenantInfoByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantInfo
// @Summary 更新tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInfo true "更新tenantInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantInfo/updateTenantInfo [put]
export const updateTenantInfo = (data) => {
  return service({
    url: '/tenantInfo/updateTenantInfo',
    method: 'put',
    data
  })
}

// @Tags TenantInfo
// @Summary 用id查询tenantInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantInfo true "用id查询tenantInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantInfo/findTenantInfo [get]
export const findTenantInfo = (params) => {
  return service({
    url: '/tenantInfo/findTenantInfo',
    method: 'get',
    params
  })
}

// @Tags TenantInfo
// @Summary 分页获取tenantInfo表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantInfo表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantInfo/getTenantInfoList [get]
export const getTenantInfoList = (params) => {
  return service({
    url: '/tenantInfo/getTenantInfoList',
    method: 'get',
    params
  })
}
