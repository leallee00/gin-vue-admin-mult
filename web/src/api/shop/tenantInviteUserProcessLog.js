import service from '@/utils/request'

// @Tags TenantInviteUserProcessLog
// @Summary 创建tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcessLog true "创建tenantInviteUserProcessLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /tenantInviteUserProcessLog/createTenantInviteUserProcessLog [post]
export const createTenantInviteUserProcessLog = (data) => {
  return service({
    url: '/tenantInviteUserProcessLog/createTenantInviteUserProcessLog',
    method: 'post',
    data
  })
}

// @Tags TenantInviteUserProcessLog
// @Summary 删除tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcessLog true "删除tenantInviteUserProcessLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInviteUserProcessLog/deleteTenantInviteUserProcessLog [delete]
export const deleteTenantInviteUserProcessLog = (params) => {
  return service({
    url: '/tenantInviteUserProcessLog/deleteTenantInviteUserProcessLog',
    method: 'delete',
    params
  })
}

// @Tags TenantInviteUserProcessLog
// @Summary 批量删除tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除tenantInviteUserProcessLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /tenantInviteUserProcessLog/deleteTenantInviteUserProcessLog [delete]
export const deleteTenantInviteUserProcessLogByIds = (params) => {
  return service({
    url: '/tenantInviteUserProcessLog/deleteTenantInviteUserProcessLogByIds',
    method: 'delete',
    params
  })
}

// @Tags TenantInviteUserProcessLog
// @Summary 更新tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.TenantInviteUserProcessLog true "更新tenantInviteUserProcessLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /tenantInviteUserProcessLog/updateTenantInviteUserProcessLog [put]
export const updateTenantInviteUserProcessLog = (data) => {
  return service({
    url: '/tenantInviteUserProcessLog/updateTenantInviteUserProcessLog',
    method: 'put',
    data
  })
}

// @Tags TenantInviteUserProcessLog
// @Summary 用id查询tenantInviteUserProcessLog表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.TenantInviteUserProcessLog true "用id查询tenantInviteUserProcessLog表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /tenantInviteUserProcessLog/findTenantInviteUserProcessLog [get]
export const findTenantInviteUserProcessLog = (params) => {
  return service({
    url: '/tenantInviteUserProcessLog/findTenantInviteUserProcessLog',
    method: 'get',
    params
  })
}

// @Tags TenantInviteUserProcessLog
// @Summary 分页获取tenantInviteUserProcessLog表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取tenantInviteUserProcessLog表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /tenantInviteUserProcessLog/getTenantInviteUserProcessLogList [get]
export const getTenantInviteUserProcessLogList = (params) => {
  return service({
    url: '/tenantInviteUserProcessLog/getTenantInviteUserProcessLogList',
    method: 'get',
    params
  })
}
