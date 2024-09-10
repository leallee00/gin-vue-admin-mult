import service from '@/utils/request'

// @Tags TenantUserRel
// @Summary 创建tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantUserRel true "创建tenantUserRel表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantUserRel/createTenantUserRel [post]
export const createTenantUserRel = (data) => {
  return service({
    url: '/tenantUserRel/createTenantUserRel',
    method: 'post',
    data
  })
}

// @Tags TenantUserRel
// @Summary 删除tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantUserRel true "删除tenantUserRel表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantUserRel/deleteTenantUserRel [delete]
export const deleteTenantUserRel = (params) => {
  return service({
    url: '/tenantUserRel/deleteTenantUserRel',
    method: 'delete',
    params
  })
}

// @Tags TenantUserRel
// @Summary 批量删除tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantUserRel表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantUserRel/deleteTenantUserRel [delete]
export const deleteTenantUserRelByIds = (params) => {
  return service({
    url: '/tenantUserRel/deleteTenantUserRelByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantUserRel
// @Summary 更新tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantUserRel true "更新tenantUserRel表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantUserRel/updateTenantUserRel [put]
export const updateTenantUserRel = (data) => {
  return service({
    url: '/tenantUserRel/updateTenantUserRel',
    method: 'put',
    data
  })
}

// @Tags TenantUserRel
// @Summary 用id查询tenantUserRel表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantUserRel true "用id查询tenantUserRel表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantUserRel/findTenantUserRel [get]
export const findTenantUserRel = (params) => {
  return service({
    url: '/tenantUserRel/findTenantUserRel',
    method: 'get',
    params
  })
}

// @Tags TenantUserRel
// @Summary 分页获取tenantUserRel表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantUserRel表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantUserRel/getTenantUserRelList [get]
export const getTenantUserRelList = (params) => {
  return service({
    url: '/tenantUserRel/getTenantUserRelList',
    method: 'get',
    params
  })
}
