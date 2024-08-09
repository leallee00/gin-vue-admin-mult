import service from '@/utils/request'

// @Tags UserApplyJoinTenantProcess
// @Summary 创建userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcess true "创建userApplyJoinTenantProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /userApplyJoinTenantProcess/createUserApplyJoinTenantProcess [post]
export const createUserApplyJoinTenantProcess = (data) => {
  return service({
    url: '/userApplyJoinTenantProcess/createUserApplyJoinTenantProcess',
    method: 'post',
    data
  })
}

// @Tags UserApplyJoinTenantProcess
// @Summary 删除userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcess true "删除userApplyJoinTenantProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcess [delete]
export const deleteUserApplyJoinTenantProcess = (params) => {
  return service({
    url: '/userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcess',
    method: 'delete',
    params
  })
}

// @Tags UserApplyJoinTenantProcess
// @Summary 批量删除userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除userApplyJoinTenantProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcess [delete]
export const deleteUserApplyJoinTenantProcessByIds = (params) => {
  return service({
    url: '/userApplyJoinTenantProcess/deleteUserApplyJoinTenantProcessByIds',
    method: 'delete',
    params
  })
}

// @Tags UserApplyJoinTenantProcess
// @Summary 更新userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserApplyJoinTenantProcess true "更新userApplyJoinTenantProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /userApplyJoinTenantProcess/updateUserApplyJoinTenantProcess [put]
export const updateUserApplyJoinTenantProcess = (data) => {
  return service({
    url: '/userApplyJoinTenantProcess/updateUserApplyJoinTenantProcess',
    method: 'put',
    data
  })
}

// @Tags UserApplyJoinTenantProcess
// @Summary 用id查询userApplyJoinTenantProcess表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.UserApplyJoinTenantProcess true "用id查询userApplyJoinTenantProcess表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /userApplyJoinTenantProcess/findUserApplyJoinTenantProcess [get]
export const findUserApplyJoinTenantProcess = (params) => {
  return service({
    url: '/userApplyJoinTenantProcess/findUserApplyJoinTenantProcess',
    method: 'get',
    params
  })
}

// @Tags UserApplyJoinTenantProcess
// @Summary 分页获取userApplyJoinTenantProcess表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取userApplyJoinTenantProcess表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /userApplyJoinTenantProcess/getUserApplyJoinTenantProcessList [get]
export const getUserApplyJoinTenantProcessList = (params) => {
  return service({
    url: '/userApplyJoinTenantProcess/getUserApplyJoinTenantProcessList',
    method: 'get',
    params
  })
}
