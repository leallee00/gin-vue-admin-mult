<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="三方授权码:" prop="accessKeyId">
          <el-input v-model="formData.accessKeyId" :clearable="true"  placeholder="请输入三方授权码" />
       </el-form-item>
        <el-form-item label="三方授权密码:" prop="accessSecret">
          <el-input v-model="formData.accessSecret" :clearable="true"  placeholder="请输入三方授权密码" />
       </el-form-item>
        <el-form-item label="三方提供的认证链接:" prop="authUrl">
          <el-input v-model="formData.authUrl" :clearable="true"  placeholder="请输入三方提供的认证链接" />
       </el-form-item>
        <el-form-item label="系统提供的回调地址，第三方认证后回调:" prop="callBackUrl">
          <el-input v-model="formData.callBackUrl" :clearable="true"  placeholder="请输入系统提供的回调地址，第三方认证后回调" />
       </el-form-item>
        <el-form-item label="详情:" prop="description">
          <el-input v-model="formData.description" :clearable="true"  placeholder="请输入详情" />
       </el-form-item>
        <el-form-item label="编号:" prop="id">
          <el-input v-model.number="formData.id" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="三方服务名称:" prop="service">
           <el-select v-model="formData.service" placeholder="请选择三方服务名称" style="width:100%" :clearable="true" >
              <el-option v-for="(item,key) in third_authOptions" :key="key" :label="item.label" :value="item.value" />
           </el-select>
       </el-form-item>
        <el-form-item label="三方服务编号:" prop="serviceType">
          <el-input v-model.number="formData.serviceType" :clearable="true" placeholder="请输入" />
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
  createAuthConfig,
  updateAuthConfig,
  findAuthConfig
} from '@/api/shop/authConfig'

defineOptions({
    name: 'AuthConfigForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'

const route = useRoute()
const router = useRouter()

const type = ref('')
const third_authOptions = ref([])
const formData = ref({
            accessKeyId: '',
            accessSecret: '',
            authUrl: '',
            callBackUrl: '',
            description: '',
            id: undefined,
            service: '',
            serviceType: undefined,
        })
// 验证规则
const rule = reactive({
               service : [{
                   required: true,
                   message: '',
                   trigger: ['input','blur'],
               }],
               serviceType : [{
                   required: true,
                   message: '',
                   trigger: ['input','blur'],
               }],
})

const elFormRef = ref()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findAuthConfig({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    third_authOptions.value = await getDictFunc('third_auth')
}

init()
// 保存按钮
const save = async() => {
      elFormRef.value?.validate( async (valid) => {
         if (!valid) return
            let res
           switch (type.value) {
             case 'create':
               res = await createAuthConfig(formData.value)
               break
             case 'update':
               res = await updateAuthConfig(formData.value)
               break
             default:
               res = await createAuthConfig(formData.value)
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
