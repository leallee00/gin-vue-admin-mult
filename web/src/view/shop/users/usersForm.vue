<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="用户头像:" prop="avatar">
          <el-input v-model="formData.avatar" :clearable="true"  placeholder="请输入用户头像" />
       </el-form-item>
        <el-form-item label="用户邮箱:" prop="email">
          <el-input v-model="formData.email" :clearable="true"  placeholder="请输入用户邮箱" />
       </el-form-item>
        <el-form-item label="用户昵称:" prop="nickName">
          <el-input v-model="formData.nickName" :clearable="true"  placeholder="请输入用户昵称" />
       </el-form-item>
        <el-form-item label="用户登录密码:" prop="password">
          <el-input v-model="formData.password" :clearable="true"  placeholder="请输入用户登录密码" />
       </el-form-item>
        <el-form-item label="用户手机号:" prop="phone">
          <el-input v-model="formData.phone" :clearable="true"  placeholder="请输入用户手机号" />
       </el-form-item>
        <el-form-item label="用户状态 0:正常 1冻结:" prop="status">
           <el-select v-model="formData.status" placeholder="请选择用户状态 0:正常 1冻结" style="width:100%" :clearable="true" >
              <el-option v-for="(item,key) in user_statusOptions" :key="key" :label="item.label" :value="item.value" />
           </el-select>
       </el-form-item>
        <el-form-item label="用户登录名:" prop="username">
          <el-input v-model="formData.username" :clearable="true"  placeholder="请输入用户登录名" />
       </el-form-item>
        <el-form-item label="用户UUID:" prop="uuid">
          <el-input v-model="formData.uuid" :clearable="true"  placeholder="请输入用户UUID" />
       </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="save">保存</el-button>
          <el-button type="primary" @click="back">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script setup>
import {
  createUsers,
  updateUsers,
  findUsers
} from '@/api/shop/users'

defineOptions({
    name: 'UsersForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'

const route = useRoute()
const router = useRouter()

const type = ref('')
const user_statusOptions = ref([])
const formData = ref({
            avatar: '',
            email: '',
            nickName: '',
            password: '',
            phone: '',
            status: '',
            username: '',
            uuid: '',
        })
// 验证规则
const rule = reactive({
})

const elFormRef = ref()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findUsers({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    user_statusOptions.value = await getDictFunc('user_status')
}

init()
// 保存按钮
const save = async() => {
      elFormRef.value?.validate( async (valid) => {
         if (!valid) return
            let res
           switch (type.value) {
             case 'create':
               res = await createUsers(formData.value)
               break
             case 'update':
               res = await updateUsers(formData.value)
               break
             default:
               res = await createUsers(formData.value)
               break
           }
           if (res.code === 0) {
             ElMessage({
               type: 'success',
               message: '创建/更改成功'
             })
           }
       })
}

// 返回按钮
const back = () => {
    router.go(-1)
}

</script>

<style>
</style>
