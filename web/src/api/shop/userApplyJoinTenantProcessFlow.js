import service from '@/utils/request'

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 创建userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcessFlow true "创建userApplyJoinTenantProcessFlow表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /userApplyJoinTenantProcessFlow/createUserApplyJoinTenantProcessFlow [post]
export const createUserApplyJoinTenantProcessFlow = (data) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/createUserApplyJoinTenantProcessFlow',
    method: 'post',
    data
  })
}

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 删除userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcessFlow true "删除userApplyJoinTenantProcessFlow表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlow [delete]
export const deleteUserApplyJoinTenantProcessFlow = (params) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlow',
    method: 'delete',
    params
  })
}

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 批量删除userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除userApplyJoinTenantProcessFlow表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlow [delete]
export const deleteUserApplyJoinTenantProcessFlowByIds = (params) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/deleteUserApplyJoinTenantProcessFlowByIds',
    method: 'delete',
    params
  })
}

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 更新userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcessFlow true "更新userApplyJoinTenantProcessFlow表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /userApplyJoinTenantProcessFlow/updateUserApplyJoinTenantProcessFlow [put]
export const updateUserApplyJoinTenantProcessFlow = (data) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/updateUserApplyJoinTenantProcessFlow',
    method: 'put',
    data
  })
}

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 用id查询userApplyJoinTenantProcessFlow表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.UserApplyJoinTenantProcessFlow true "用id查询userApplyJoinTenantProcessFlow表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /userApplyJoinTenantProcessFlow/findUserApplyJoinTenantProcessFlow [get]
export const findUserApplyJoinTenantProcessFlow = (params) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/findUserApplyJoinTenantProcessFlow',
    method: 'get',
    params
  })
}

// @Tags UserApplyJoinTenantProcessFlow
// @Summary 分页获取userApplyJoinTenantProcessFlow表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取userApplyJoinTenantProcessFlow表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /userApplyJoinTenantProcessFlow/getUserApplyJoinTenantProcessFlowList [get]
export const getUserApplyJoinTenantProcessFlowList = (params) => {
  return service({
    url: '/userApplyJoinTenantProcessFlow/getUserApplyJoinTenantProcessFlowList',
    method: 'get',
    params
  })
}
