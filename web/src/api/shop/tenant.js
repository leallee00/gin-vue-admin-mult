import service from '@/utils/request'

// @Tags Tenant
// @Summary 创建tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Tenant true "创建tenant表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenant/createTenant [post]
export const createTenant = (data) => {
  return service({
    url: '/tenant/createTenant',
    method: 'post',
    data
  })
}

// @Tags Tenant
// @Summary 删除tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Tenant true "删除tenant表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenant/deleteTenant [delete]
export const deleteTenant = (params) => {
  return service({
    url: '/tenant/deleteTenant',
    method: 'delete',
    params
  })
}

// @Tags Tenant
// @Summary 批量删除tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenant表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenant/deleteTenant [delete]
export const deleteTenantByIds = (params) => {
  return service({
    url: '/tenant/deleteTenantByIds',
    method: 'delete',
    params
  })
}

// @Tags Tenant
// @Summary 更新tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Tenant true "更新tenant表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenant/updateTenant [put]
export const updateTenant = (data) => {
  return service({
    url: '/tenant/updateTenant',
    method: 'put',
    data
  })
}

// @Tags Tenant
// @Summary 用id查询tenant表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.Tenant true "用id查询tenant表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenant/findTenant [get]
export const findTenant = (params) => {
  return service({
    url: '/tenant/findTenant',
    method: 'get',
    params
  })
}

// @Tags Tenant
// @Summary 分页获取tenant表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenant表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenant/getTenantList [get]
export const getTenantList = (params) => {
  return service({
    url: '/tenant/getTenantList',
    method: 'get',
    params
  })
}
