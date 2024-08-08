<template>
  <div>
    <div class="gva-form-box">
      <el-form :model="formData" ref="elFormRef" label-position="right" :rules="rule" label-width="80px">
        <el-form-item label="数据编号:" prop="id">
          <el-input v-model.number="formData.id" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="租户id:" prop="tenantId">
          <el-input v-model.number="formData.tenantId" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="创建时间:" prop="createdAt">
          <el-date-picker v-model="formData.createdAt" type="date" placeholder="选择日期" :clearable="true"></el-date-picker>
       </el-form-item>
        <el-form-item label="更新时间:" prop="updatedAt">
          <el-date-picker v-model="formData.updatedAt" type="date" placeholder="选择日期" :clearable="true"></el-date-picker>
       </el-form-item>
        <el-form-item label="基础颜色:" prop="baseColor">
          <el-input v-model="formData.baseColor" :clearable="true"  placeholder="请输入基础颜色" />
       </el-form-item>
        <el-form-item label="租户联系人:" prop="liaison">
          <el-input v-model="formData.liaison" :clearable="true"  placeholder="请输入租户联系人" />
       </el-form-item>
        <el-form-item label="电话:" prop="phone">
          <el-input v-model="formData.phone" :clearable="true"  placeholder="请输入电话" />
       </el-form-item>
        <el-form-item label="邮箱:" prop="email">
          <el-input v-model="formData.email" :clearable="true"  placeholder="请输入邮箱" />
       </el-form-item>
        <el-form-item label="负责人姓名:" prop="ownerName">
          <el-input v-model="formData.ownerName" :clearable="true"  placeholder="请输入负责人姓名" />
       </el-form-item>
        <el-form-item label="负责人身份证号码:" prop="ownerCode">
          <el-input v-model="formData.ownerCode" :clearable="true"  placeholder="请输入负责人身份证号码" />
       </el-form-item>
        <el-form-item label="负责人身份证正面:" prop="ownerIdCardFront">
          <el-input v-model="formData.ownerIdCardFront" :clearable="true"  placeholder="请输入负责人身份证正面" />
       </el-form-item>
        <el-form-item label="负责人身份证背面:" prop="ownerIdCardBack">
          <el-input v-model="formData.ownerIdCardBack" :clearable="true"  placeholder="请输入负责人身份证背面" />
       </el-form-item>
        <el-form-item label="负责人手持身份证照片:" prop="ownerSelfTackCardPic">
          <el-input v-model="formData.ownerSelfTackCardPic" :clearable="true"  placeholder="请输入负责人手持身份证照片" />
       </el-form-item>
        <el-form-item label="负责人地址:" prop="ownerAddr">
          <el-input v-model="formData.ownerAddr" :clearable="true"  placeholder="请输入负责人地址" />
       </el-form-item>
        <el-form-item label="负责人手机:" prop="ownerPhone">
          <el-input v-model="formData.ownerPhone" :clearable="true"  placeholder="请输入负责人手机" />
       </el-form-item>
        <el-form-item label="负责人邮箱:" prop="ownerEmail">
          <el-input v-model="formData.ownerEmail" :clearable="true"  placeholder="请输入负责人邮箱" />
       </el-form-item>
        <el-form-item label="负责人性别 :" prop="ownerSex">
          <el-input v-model.number="formData.ownerSex" :clearable="true" placeholder="请输入" />
       </el-form-item>
        <el-form-item label="租户主体法人代表:" prop="qualOrgLegal">
          <el-input v-model="formData.qualOrgLegal" :clearable="true"  placeholder="请输入租户主体法人代表" />
       </el-form-item>
        <el-form-item label="租户主体名称:" prop="qualOrgName">
          <el-input v-model="formData.qualOrgName" :clearable="true"  placeholder="请输入租户主体名称" />
       </el-form-item>
        <el-form-item label="租户主体地址:" prop="qualOrgAddr">
          <el-input v-model="formData.qualOrgAddr" :clearable="true"  placeholder="请输入租户主体地址" />
       </el-form-item>
        <el-form-item label="租户主体过期时间:" prop="qualOrgExpireTime">
          <el-date-picker v-model="formData.qualOrgExpireTime" type="date" placeholder="选择日期" :clearable="true"></el-date-picker>
       </el-form-item>
        <el-form-item label="租户主体经营范围:" prop="qualBusinessScope">
          <el-input v-model="formData.qualBusinessScope" :clearable="true"  placeholder="请输入租户主体经营范围" />
       </el-form-item>
        <el-form-item label="租户主体社会一致性代码:" prop="qualSocialCode">
          <el-input v-model="formData.qualSocialCode" :clearable="true"  placeholder="请输入租户主体社会一致性代码" />
       </el-form-item>
        <el-form-item label="租户证照照片:" prop="qualBusinessLicensePic">
          <el-input v-model="formData.qualBusinessLicensePic" :clearable="true"  placeholder="请输入租户证照照片" />
       </el-form-item>
        <el-form-item label="收款银行名称:" prop="bankName">
          <el-input v-model="formData.bankName" :clearable="true"  placeholder="请输入收款银行名称" />
       </el-form-item>
        <el-form-item label="收款银行用户名称:" prop="bankUserName">
          <el-input v-model="formData.bankUserName" :clearable="true"  placeholder="请输入收款银行用户名称" />
       </el-form-item>
        <el-form-item label="收款银行卡号:" prop="bankAccount">
          <el-input v-model="formData.bankAccount" :clearable="true"  placeholder="请输入收款银行卡号" />
       </el-form-item>
        <el-form-item label="支付宝用户名:" prop="alipayName">
          <el-input v-model="formData.alipayName" :clearable="true"  placeholder="请输入支付宝用户名" />
       </el-form-item>
        <el-form-item label="支付宝账号:" prop="alipayAccount">
          <el-input v-model="formData.alipayAccount" :clearable="true"  placeholder="请输入支付宝账号" />
       </el-form-item>
        <el-form-item label="微信用户名:" prop="wechatName">
          <el-input v-model="formData.wechatName" :clearable="true"  placeholder="请输入微信用户名" />
       </el-form-item>
        <el-form-item label="微信账号:" prop="wechatAccount">
          <el-input v-model="formData.wechatAccount" :clearable="true"  placeholder="请输入微信账号" />
       </el-form-item>
        <el-form-item label="状态:" prop="status">
          <el-input v-model.number="formData.status" :clearable="true" placeholder="请输入" />
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
  createTenantInfo,
  updateTenantInfo,
  findTenantInfo
} from '@/api/shop/tenantInfo'

defineOptions({
    name: 'TenantInfoForm'
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
            id: undefined,
            tenantId: undefined,
            createdAt: new Date(),
            updatedAt: new Date(),
            baseColor: '',
            liaison: '',
            phone: '',
            email: '',
            ownerName: '',
            ownerCode: '',
            ownerIdCardFront: '',
            ownerIdCardBack: '',
            ownerSelfTackCardPic: '',
            ownerAddr: '',
            ownerPhone: '',
            ownerEmail: '',
            ownerSex: undefined,
            qualOrgLegal: '',
            qualOrgName: '',
            qualOrgAddr: '',
            qualOrgExpireTime: new Date(),
            qualBusinessScope: '',
            qualSocialCode: '',
            qualBusinessLicensePic: '',
            bankName: '',
            bankUserName: '',
            bankAccount: '',
            alipayName: '',
            alipayAccount: '',
            wechatName: '',
            wechatAccount: '',
            status: undefined,
        })
// 验证规则
const rule = reactive({
})

const elFormRef = ref()

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findTenantInfo({ ID: route.query.id })
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
               res = await createTenantInfo(formData.value)
               break
             case 'update':
               res = await updateTenantInfo(formData.value)
               break
             default:
               res = await createTenantInfo(formData.value)
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
