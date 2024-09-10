import service from '@/utils/request'

// @Tags Auth
// @Summary 创建auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Auth true "创建auth表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /auth/createAuth [post]
export const createAuth = (data) => {
  return service({
    url: '/auth/createAuth',
    method: 'post',
    data
  })
}

// @Tags Auth
// @Summary 删除auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Auth true "删除auth表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /auth/deleteAuth [delete]
export const deleteAuth = (params) => {
  return service({
    url: '/auth/deleteAuth',
    method: 'delete',
    params
  })
}

// @Tags Auth
// @Summary 批量删除auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除auth表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /auth/deleteAuth [delete]
export const deleteAuthByIds = (params) => {
  return service({
    url: '/auth/deleteAuthByIds',
    method: 'delete',
    params
  })
}

// @Tags Auth
// @Summary 更新auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.Auth true "更新auth表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /auth/updateAuth [put]
export const updateAuth = (data) => {
  return service({
    url: '/auth/updateAuth',
    method: 'put',
    data
  })
}

// @Tags Auth
// @Summary 用id查询auth表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.Auth true "用id查询auth表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /auth/findAuth [get]
export const findAuth = (params) => {
  return service({
    url: '/auth/findAuth',
    method: 'get',
    params
  })
}

// @Tags Auth
// @Summary 分页获取auth表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取auth表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /auth/getAuthList [get]
export const getAuthList = (params) => {
  return service({
    url: '/auth/getAuthList',
    method: 'get',
    params
  })
}
