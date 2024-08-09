<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="申请id:" prop="applyId">
          <el-input v-model.number="formData.applyId" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="操作原因:" prop="desc">
          <el-input v-model="formData.desc" :clearable="true"  placeholder="请输入操作原因" />
       </el-form-item>
        <el-form-item label="操作者id:" prop="optUserId">
          <el-input v-model.number="formData.optUserId" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="process字段:" prop="process">
           <el-select v-model="formData.process" placeholder="请选择process字段" style="width:100%" :clearable="true" >
              <el-option v-for="(item,key) in user_apply_tenant_processOptions" :key="key" :label="item.label" :value="item.value" />
           </el-select>
       </el-form-item>
        <el-form-item label="租户id:" prop="tenantId">
          <el-input v-model.number="formData.tenantId" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="用户id:" prop="userId">
          <el-input v-model.number="formData.userId" :clearable="true" placeholder="请输入" />
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
  createUserApplyJoinTenantProcessFlow,
  updateUserApplyJoinTenantProcessFlow,
  findUserApplyJoinTenantProcessFlow
} from '@/api/shop/userApplyJoinTenantProcessFlow'

defineOptions({
    name: 'UserApplyJoinTenantProcessFlowForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'

const route = useRoute()
const router = useRouter()

const type = ref('')
const user_apply_tenant_processOptions = ref([])
const formData = ref({
            applyId: undefined,
            desc: '',
            optUserId: undefined,
            process: '',
            tenantId: undefined,
            userId: undefined,
        })
// 验证规则
const rule = reactive({
})

const elFormRef = ref()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findUserApplyJoinTenantProcessFlow({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
    user_apply_tenant_processOptions.value = await getDictFunc('user_apply_tenant_process')
}

init()
// 保存按钮
const save = async() => {
      elFormRef.value?.validate( async (valid) => {
         if (!valid) return
            let res
           switch (type.value) {
             case 'create':
               res = await createUserApplyJoinTenantProcessFlow(formData.value)
               break
             case 'update':
               res = await updateUserApplyJoinTenantProcessFlow(formData.value)
               break
             default:
               res = await createUserApplyJoinTenantProcessFlow(formData.value)
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
