<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="紧急联系人姓名:" prop="emergencyContactName">
          <el-input v-model="formData.emergencyContactName" :clearable="true"  placeholder="请输入紧急联系人姓名" />
       </el-form-item>
        <el-form-item label="紧急联系人手机号码:" prop="emergencyContactPhone">
          <el-input v-model="formData.emergencyContactPhone" :clearable="true"  placeholder="请输入紧急联系人手机号码" />
       </el-form-item>
        <el-form-item label="身份证反面:" prop="idCardBack">
          <el-input v-model="formData.idCardBack" :clearable="true"  placeholder="请输入身份证反面" />
       </el-form-item>
        <el-form-item label="身份证正面图片:" prop="idCardFront">
          <el-input v-model="formData.idCardFront" :clearable="true"  placeholder="请输入身份证正面图片" />
       </el-form-item>
        <el-form-item label="身份证号码:" prop="idCardNo">
          <el-input v-model="formData.idCardNo" :clearable="true"  placeholder="请输入身份证号码" />
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
  createUserAuthInfo,
  updateUserAuthInfo,
  findUserAuthInfo
} from '@/api/shop/userAuthInfo'

defineOptions({
    name: 'UserAuthInfoForm'
})

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref, reactive } from 'vue'

const route = useRoute()
const router = useRouter()

const type = ref('')
const formData = ref({
            emergencyContactName: '',
            emergencyContactPhone: '',
            idCardBack: '',
            idCardFront: '',
            idCardNo: '',
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
      const res = await findUserAuthInfo({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
}

init()
// 保存按钮
const save = async() => {
      elFormRef.value?.validate( async (valid) => {
         if (!valid) return
            let res
           switch (type.value) {
             case 'create':
               res = await createUserAuthInfo(formData.value)
               break
             case 'update':
               res = await updateUserAuthInfo(formData.value)
               break
             default:
               res = await createUserAuthInfo(formData.value)
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
