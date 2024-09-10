import service from '@/utils/request'

// @Tags AuthConfig
// @Summary 创建authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.AuthConfig true "创建authConfig表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /authConfig/createAuthConfig [post]
export const createAuthConfig = (data) => {
  return service({
    url: '/authConfig/createAuthConfig',
    method: 'post',
    data
  })
}

// @Tags AuthConfig
// @Summary 删除authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.AuthConfig true "删除authConfig表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /authConfig/deleteAuthConfig [delete]
export const deleteAuthConfig = (params) => {
  return service({
    url: '/authConfig/deleteAuthConfig',
    method: 'delete',
    params
  })
}

// @Tags AuthConfig
// @Summary 批量删除authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除authConfig表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /authConfig/deleteAuthConfig [delete]
export const deleteAuthConfigByIds = (params) => {
  return service({
    url: '/authConfig/deleteAuthConfigByIds',
    method: 'delete',
    params
  })
}

// @Tags AuthConfig
// @Summary 更新authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.AuthConfig true "更新authConfig表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /authConfig/updateAuthConfig [put]
export const updateAuthConfig = (data) => {
  return service({
    url: '/authConfig/updateAuthConfig',
    method: 'put',
    data
  })
}

// @Tags AuthConfig
// @Summary 用id查询authConfig表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.AuthConfig true "用id查询authConfig表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /authConfig/findAuthConfig [get]
export const findAuthConfig = (params) => {
  return service({
    url: '/authConfig/findAuthConfig',
    method: 'get',
    params
  })
}

// @Tags AuthConfig
// @Summary 分页获取authConfig表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取authConfig表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /authConfig/getAuthConfigList [get]
export const getAuthConfigList = (params) => {
  return service({
    url: '/authConfig/getAuthConfigList',
    method: 'get',
    params
  })
}
