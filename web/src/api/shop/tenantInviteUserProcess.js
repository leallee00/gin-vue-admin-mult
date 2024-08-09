import service from '@/utils/request'

// @Tags TenantInviteUserProcess
// @Summary 创建tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcess true "创建tenantInviteUserProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantInviteUserProcess/createTenantInviteUserProcess [post]
export const createTenantInviteUserProcess = (data) => {
  return service({
    url: '/tenantInviteUserProcess/createTenantInviteUserProcess',
    method: 'post',
    data
  })
}

// @Tags TenantInviteUserProcess
// @Summary 删除tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcess true "删除tenantInviteUserProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInviteUserProcess/deleteTenantInviteUserProcess [delete]
export const deleteTenantInviteUserProcess = (params) => {
  return service({
    url: '/tenantInviteUserProcess/deleteTenantInviteUserProcess',
    method: 'delete',
    params
  })
}

// @Tags TenantInviteUserProcess
// @Summary 批量删除tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantInviteUserProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInviteUserProcess/deleteTenantInviteUserProcess [delete]
export const deleteTenantInviteUserProcessByIds = (params) => {
  return service({
    url: '/tenantInviteUserProcess/deleteTenantInviteUserProcessByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantInviteUserProcess
// @Summary 更新tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcess true "更新tenantInviteUserProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantInviteUserProcess/updateTenantInviteUserProcess [put]
export const updateTenantInviteUserProcess = (data) => {
  return service({
    url: '/tenantInviteUserProcess/updateTenantInviteUserProcess',
    method: 'put',
    data
  })
}

// @Tags TenantInviteUserProcess
// @Summary 用id查询tenantInviteUserProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantInviteUserProcess true "用id查询tenantInviteUserProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantInviteUserProcess/findTenantInviteUserProcess [get]
export const findTenantInviteUserProcess = (params) => {
  return service({
    url: '/tenantInviteUserProcess/findTenantInviteUserProcess',
    method: 'get',
    params
  })
}

// @Tags TenantInviteUserProcess
// @Summary 分页获取tenantInviteUserProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantInviteUserProcess表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantInviteUserProcess/getTenantInviteUserProcessList [get]
export const getTenantInviteUserProcessList = (params) => {
  return service({
    url: '/tenantInviteUserProcess/getTenantInviteUserProcessList',
    method: 'get',
    params
  })
}
