import service from '@/utils/request'

// @Tags UserAuthInfo
// @Summary 创建userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserAuthInfo true "创建userAuthInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"创建成功"}"
// @Router /userAuthInfo/createUserAuthInfo [post]
export const createUserAuthInfo = (data) => {
  return service({
    url: '/userAuthInfo/createUserAuthInfo',
    method: 'post',
    data
  })
}

// @Tags UserAuthInfo
// @Summary 删除userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserAuthInfo true "删除userAuthInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userAuthInfo/deleteUserAuthInfo [delete]
export const deleteUserAuthInfo = (params) => {
  return service({
    url: '/userAuthInfo/deleteUserAuthInfo',
    method: 'delete',
    params
  })
}

// @Tags UserAuthInfo
// @Summary 批量删除userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除userAuthInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /userAuthInfo/deleteUserAuthInfo [delete]
export const deleteUserAuthInfoByIds = (params) => {
  return service({
    url: '/userAuthInfo/deleteUserAuthInfoByIds',
    method: 'delete',
    params
  })
}

// @Tags UserAuthInfo
// @Summary 更新userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.UserAuthInfo true "更新userAuthInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /userAuthInfo/updateUserAuthInfo [put]
export const updateUserAuthInfo = (data) => {
  return service({
    url: '/userAuthInfo/updateUserAuthInfo',
    method: 'put',
    data
  })
}

// @Tags UserAuthInfo
// @Summary 用id查询userAuthInfo表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.UserAuthInfo true "用id查询userAuthInfo表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /userAuthInfo/findUserAuthInfo [get]
export const findUserAuthInfo = (params) => {
  return service({
    url: '/userAuthInfo/findUserAuthInfo',
    method: 'get',
    params
  })
}

// @Tags UserAuthInfo
// @Summary 分页获取userAuthInfo表列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取userAuthInfo表列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /userAuthInfo/getUserAuthInfoList [get]
export const getUserAuthInfoList = (params) => {
  return service({
    url: '/userAuthInfo/getUserAuthInfoList',
    method: 'get',
    params
  })
}
