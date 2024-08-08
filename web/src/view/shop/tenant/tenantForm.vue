<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="id字段:" prop="id">
          <el-input v-model.number="formData.id" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="createdAt字段:" prop="createdAt">
          <el-date-picker v-model="formData.createdAt" type="date" placeholder="选择日期" :clearable="true"></el-date-picker>
       </el-form-item>
        <el-form-item label="updatedAt字段:" prop="updatedAt">
          <el-date-picker v-model="formData.updatedAt" type="date" placeholder="选择日期" :clearable="true"></el-date-picker>
       </el-form-item>
        <el-form-item label="商户UUID:" prop="uuid">
          <el-input v-model="formData.uuid" :clearable="true"  placeholder="请输入商户UUID" />
       </el-form-item>
        <el-form-item label="商户名称:" prop="tenantName">
          <el-input v-model="formData.tenantName" :clearable="true"  placeholder="请输入商户名称" />
       </el-form-item>
        <el-form-item label="访问秘钥:" prop="accessKeyId">
          <el-input v-model="formData.accessKeyId" :clearable="true"  placeholder="请输入访问秘钥" />
       </el-form-item>
        <el-form-item label="访问秘钥密码:" prop="accessKeySecret">
          <el-input v-model="formData.accessKeySecret" :clearable="true"  placeholder="请输入访问秘钥密码" />
       </el-form-item>
        <el-form-item label="状态:" prop="status">
           <el-select v-model="formData.status" placeholder="请选择状态" style="width:100%" :clearable="true" >
              <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
           </el-select>
       </el-form-item>
        <el-form-item label="主图:" prop="headerImg">
          <el-input v-model="formData.headerImg" :clearable="true"  placeholder="请输入主图" />
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
  createTenant,
  updateTenant,
  findTenant
} from '@/api/shop/tenant'

defineOptions({
    name: 'TenantForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'

const route = useRoute()
const router = useRouter()

const type = ref('')
const tenantStatusOptions = ref([])
const formData = ref({
            id: undefined,
            createdAt: new Date(),
            updatedAt: new Date(),
            uuid: '',
            tenantName: '',
            accessKeyId: '',
            accessKeySecret: '',
            status: '',
            headerImg: '',
        })
// 验证规则
const rule = reactive({
               tenantName : [{
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
      const res = await findTenant({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    tenantStatusOptions.value = await getDictFunc('tenantStatus')
}

init()
// 保存按钮
const save = async() => {
      elFormRef.value?.validate( async (valid) => {
         if (!valid) return
            let res
           switch (type.value) {
             case 'create':
               res = await createTenant(formData.value)
               break
             case 'update':
               res = await updateTenant(formData.value)
               break
             default:
               res = await createTenant(formData.value)
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
