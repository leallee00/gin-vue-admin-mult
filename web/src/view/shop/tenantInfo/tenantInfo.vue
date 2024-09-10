<template>
  <div>
    <div class="gva-search-box">
      <el-form ref="elSearchFormRef" :inline="true" :model="searchInfo" class="demo-form-inline" :rules="searchRule" @keyup.enter="onSubmit">
        <el-form-item label="数据编号" prop="id">
            
             <el-input v-model.number="searchInfo.id" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="租户id" prop="tenantId">
            
             <el-input v-model.number="searchInfo.tenantId" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="创建时间" prop="createdAt">
            
            <template #label>
            <span>
              创建时间
              <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
                <el-icon><QuestionFilled /></el-icon>
              </el-tooltip>
            </span>
          </template>
            <el-date-picker v-model="searchInfo.startCreatedAt" type="datetime" placeholder="开始日期" :disabled-date="time=> searchInfo.endCreatedAt ? time.getTime() > searchInfo.endCreatedAt.getTime() : false"></el-date-picker>
            —
            <el-date-picker v-model="searchInfo.endCreatedAt" type="datetime" placeholder="结束日期" :disabled-date="time=> searchInfo.startCreatedAt ? time.getTime() < searchInfo.startCreatedAt.getTime() : false"></el-date-picker>

        </el-form-item>
        <el-form-item label="更新时间" prop="updatedAt">
            
            <template #label>
            <span>
              更新时间
              <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
                <el-icon><QuestionFilled /></el-icon>
              </el-tooltip>
            </span>
          </template>
            <el-date-picker v-model="searchInfo.startUpdatedAt" type="datetime" placeholder="开始日期" :disabled-date="time=> searchInfo.endUpdatedAt ? time.getTime() > searchInfo.endUpdatedAt.getTime() : false"></el-date-picker>
            —
            <el-date-picker v-model="searchInfo.endUpdatedAt" type="datetime" placeholder="结束日期" :disabled-date="time=> searchInfo.startUpdatedAt ? time.getTime() < searchInfo.startUpdatedAt.getTime() : false"></el-date-picker>

        </el-form-item>
        <el-form-item label="租户联系人" prop="liaison">
         <el-input v-model="searchInfo.liaison" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="电话" prop="phone">
         <el-input v-model="searchInfo.phone" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="邮箱" prop="email">
         <el-input v-model="searchInfo.email" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="负责人姓名" prop="ownerName">
         <el-input v-model="searchInfo.ownerName" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="负责人身份证号码" prop="ownerCode">
         <el-input v-model="searchInfo.ownerCode" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="负责人手机" prop="ownerPhone">
         <el-input v-model="searchInfo.ownerPhone" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="租户主体法人代表" prop="qualOrgLegal">
         <el-input v-model="searchInfo.qualOrgLegal" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="租户主体名称" prop="qualOrgName">
         <el-input v-model="searchInfo.qualOrgName" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="租户主体地址" prop="qualOrgAddr">
         <el-input v-model="searchInfo.qualOrgAddr" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="租户主体过期时间" prop="qualOrgExpireTime">
            
            <template #label>
            <span>
              租户主体过期时间
              <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
                <el-icon><QuestionFilled /></el-icon>
              </el-tooltip>
            </span>
          </template>
            <el-date-picker v-model="searchInfo.startQualOrgExpireTime" type="datetime" placeholder="开始日期" :disabled-date="time=> searchInfo.endQualOrgExpireTime ? time.getTime() > searchInfo.endQualOrgExpireTime.getTime() : false"></el-date-picker>
            —
            <el-date-picker v-model="searchInfo.endQualOrgExpireTime" type="datetime" placeholder="结束日期" :disabled-date="time=> searchInfo.startQualOrgExpireTime ? time.getTime() < searchInfo.startQualOrgExpireTime.getTime() : false"></el-date-picker>

        </el-form-item>
        <el-form-item label="租户主体社会一致性代码" prop="qualSocialCode">
         <el-input v-model="searchInfo.qualSocialCode" placeholder="搜索条件" />

        </el-form-item>

        <el-form-item label="状态" prop="status">
            <el-select v-model="searchInfo.status" clearable placeholder="请选择" @clear="()=>{searchInfo.status=undefined}">
              <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
            </el-select>
            </el-form-item>

        <template v-if="showAllQuery">
          <!-- 将需要控制显示状态的查询条件添加到此范围内 -->
        </template>

        <el-form-item>
          <el-button type="primary" icon="search" @click="onSubmit">查询</el-button>
          <el-button icon="refresh" @click="onReset">重置</el-button>
          <el-button link type="primary" icon="arrow-down" @click="showAllQuery=true" v-if="!showAllQuery">展开</el-button>
          <el-button link type="primary" icon="arrow-up" @click="showAllQuery=false" v-else>收起</el-button>
        </el-form-item>
      </el-form>
    </div>
    <div class="gva-table-box">
        <div class="gva-btn-list">
            <el-button type="primary" icon="plus" @click="openDialog">新增</el-button>
            <el-button icon="delete" style="margin-left: 10px;" :disabled="!multipleSelection.length" @click="onDelete">删除</el-button>
        </div>
        <el-table
        ref="multipleTable"
        style="width: 100%"
        tooltip-effect="dark"
        :data="tableData"
        row-key="id"
        @selection-change="handleSelectionChange"
        >
        <el-table-column type="selection" width="55" />
        
        <el-table-column align="left" label="编号" prop="id" width="120" />
        <el-table-column align="left" label="租户id" prop="tenantId" width="120" />
         <el-table-column align="left" label="创建时间" prop="createdAt" width="180">
            <template #default="scope">{{ formatDate(scope.row.createdAt) }}</template>
         </el-table-column>
         <el-table-column align="left" label="更新时间" prop="updatedAt" width="180">
            <template #default="scope">{{ formatDate(scope.row.updatedAt) }}</template>
         </el-table-column>
        <el-table-column align="left" label="基础颜色" prop="baseColor" width="120" />
        <el-table-column align="left" label="租户联系人" prop="liaison" width="120" />
        <el-table-column align="left" label="电话" prop="phone" width="120" />
        <el-table-column align="left" label="邮箱" prop="email" width="120" />
        <el-table-column align="left" label="负责人姓名" prop="ownerName" width="120" />
        <el-table-column align="left" label="负责人身份证号码" prop="ownerCode" width="120" />
        <el-table-column align="left" label="负责人身份证正面" prop="ownerIdCardFront" width="120" />
        <el-table-column align="left" label="负责人身份证背面" prop="ownerIdCardBack" width="120" />
        <el-table-column align="left" label="负责人手持身份证照片" prop="ownerSelfTackCardPic" width="120" />
        <el-table-column align="left" label="负责人地址" prop="ownerAddr" width="120" />
        <el-table-column align="left" label="负责人手机" prop="ownerPhone" width="120" />
        <el-table-column align="left" label="负责人邮箱" prop="ownerEmail" width="120" />
        <el-table-column align="left" label="负责人性别 " prop="ownerSex" width="120" />
        <el-table-column align="left" label="租户主体法人代表" prop="qualOrgLegal" width="120" />
        <el-table-column align="left" label="租户主体名称" prop="qualOrgName" width="120" />
        <el-table-column align="left" label="租户主体地址" prop="qualOrgAddr" width="120" />
         <el-table-column align="left" label="租户主体过期时间" prop="qualOrgExpireTime" width="180">
            <template #default="scope">{{ formatDate(scope.row.qualOrgExpireTime) }}</template>
         </el-table-column>
        <el-table-column align="left" label="租户主体经营范围" prop="qualBusinessScope" width="120" />
        <el-table-column align="left" label="租户主体社会一致性代码" prop="qualSocialCode" width="120" />
        <el-table-column align="left" label="租户证照照片" prop="qualBusinessLicensePic" width="120" />
        <el-table-column align="left" label="收款银行名称" prop="bankName" width="120" />
        <el-table-column align="left" label="收款银行用户名称" prop="bankUserName" width="120" />
        <el-table-column align="left" label="收款银行卡号" prop="bankAccount" width="120" />
        <el-table-column align="left" label="支付宝用户名" prop="alipayName" width="120" />
        <el-table-column align="left" label="支付宝账号" prop="alipayAccount" width="120" />
        <el-table-column align="left" label="微信用户名" prop="wechatName" width="120" />
        <el-table-column align="left" label="微信账号" prop="wechatAccount" width="120" />
        <el-table-column sortable align="left" label="状态" prop="status" width="80">
            <template #default="scope">
            {{ filterDict(scope.row.status,tenantStatusOptions) }}
            </template>
        </el-table-column>
        <!-- <el-table-column align="left" label="状态" prop="status" width="120" >
          <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
        </el-table-column> -->
        <el-table-column align="left" label="操作" fixed="right" min-width="240">
            <template #default="scope">
            <el-button type="primary" link icon="edit" class="table-button" @click="updateTenantInfoFunc(scope.row)">变更</el-button>
            <el-button type="primary" link icon="delete" @click="deleteRow(scope.row)">删除</el-button>
            </template>
        </el-table-column>
        </el-table>
        <div class="gva-pagination">
            <el-pagination
            layout="total, sizes, prev, pager, next, jumper"
            :current-page="page"
            :page-size="pageSize"
            :page-sizes="[10, 30, 50, 100]"
            :total="total"
            @current-change="handleCurrentChange"
            @size-change="handleSizeChange"
            />
        </div>
    </div>
    <el-drawer destroy-on-close size="800" v-model="dialogFormVisible" :show-close="false" :before-close="closeDialog">
       <template #header>
              <div class="flex justify-between items-center">
                <span class="text-lg">{{type==='create'?'添加':'修改'}}</span>
                <div>
                  <el-button type="primary" @click="enterDialog">确 定</el-button>
                  <el-button @click="closeDialog">取 消</el-button>
                </div>
              </div>
            </template>

          <el-form :model="formData" label-position="top" ref="elFormRef" :rules="rule" label-width="80px">
            <!-- <el-form-item label="编号:"  prop="id" >
              <el-input v-model.number="formData.id" :clearable="true" placeholder="请输入数据编号" />
            </el-form-item> -->
            <el-form-item label="租户id:"  prop="tenantId" >
              <el-input v-model.number="formData.tenantId" :clearable="true" placeholder="请输入租户id" />
            </el-form-item>
            <!-- <el-form-item label="创建时间:"  prop="createdAt" >
              <el-date-picker v-model="formData.createdAt" type="date" style="width:100%" placeholder="选择日期" :clearable="true"  />
            </el-form-item>
            <el-form-item label="更新时间:"  prop="updatedAt" >
              <el-date-picker v-model="formData.updatedAt" type="date" style="width:100%" placeholder="选择日期" :clearable="true"  />
            </el-form-item> -->
            <el-form-item label="基础颜色:"  prop="baseColor" >
              <el-input v-model="formData.baseColor" :clearable="true"  placeholder="请输入基础颜色" />
            </el-form-item>
            <el-form-item label="租户联系人:"  prop="liaison" >
              <el-input v-model="formData.liaison" :clearable="true"  placeholder="请输入租户联系人" />
            </el-form-item>
            <el-form-item label="电话:"  prop="phone" >
              <el-input v-model="formData.phone" :clearable="true"  placeholder="请输入电话" />
            </el-form-item>
            <el-form-item label="邮箱:"  prop="email" >
              <el-input v-model="formData.email" :clearable="true"  placeholder="请输入邮箱" />
            </el-form-item>
            <el-form-item label="负责人姓名:"  prop="ownerName" >
              <el-input v-model="formData.ownerName" :clearable="true"  placeholder="请输入负责人姓名" />
            </el-form-item>
            <el-form-item label="负责人身份证号码:"  prop="ownerCode" >
              <el-input v-model="formData.ownerCode" :clearable="true"  placeholder="请输入负责人身份证号码" />
            </el-form-item>
            <el-form-item label="负责人身份证正面:"  prop="ownerIdCardFront" >
              <el-input v-model="formData.ownerIdCardFront" :clearable="true"  placeholder="请输入负责人身份证正面" />
            </el-form-item>
            <el-form-item label="负责人身份证背面:"  prop="ownerIdCardBack" >
              <el-input v-model="formData.ownerIdCardBack" :clearable="true"  placeholder="请输入负责人身份证背面" />
            </el-form-item>
            <el-form-item label="负责人手持身份证照片:"  prop="ownerSelfTackCardPic" >
              <el-input v-model="formData.ownerSelfTackCardPic" :clearable="true"  placeholder="请输入负责人手持身份证照片" />
            </el-form-item>
            <el-form-item label="负责人地址:"  prop="ownerAddr" >
              <el-input v-model="formData.ownerAddr" :clearable="true"  placeholder="请输入负责人地址" />
            </el-form-item>
            <el-form-item label="负责人手机:"  prop="ownerPhone" >
              <el-input v-model="formData.ownerPhone" :clearable="true"  placeholder="请输入负责人手机" />
            </el-form-item>
            <el-form-item label="负责人邮箱:"  prop="ownerEmail" >
              <el-input v-model="formData.ownerEmail" :clearable="true"  placeholder="请输入负责人邮箱" />
            </el-form-item>
            <el-form-item label="负责人性别 :"  prop="ownerSex" >
              <el-input v-model.number="formData.ownerSex" :clearable="true" placeholder="请输入负责人性别 " />
            </el-form-item>
            <el-form-item label="租户主体法人代表:"  prop="qualOrgLegal" >
              <el-input v-model="formData.qualOrgLegal" :clearable="true"  placeholder="请输入租户主体法人代表" />
            </el-form-item>
            <el-form-item label="租户主体名称:"  prop="qualOrgName" >
              <el-input v-model="formData.qualOrgName" :clearable="true"  placeholder="请输入租户主体名称" />
            </el-form-item>
            <el-form-item label="租户主体地址:"  prop="qualOrgAddr" >
              <el-input v-model="formData.qualOrgAddr" :clearable="true"  placeholder="请输入租户主体地址" />
            </el-form-item>
            <el-form-item label="租户主体过期时间:"  prop="qualOrgExpireTime" >
              <el-date-picker v-model="formData.qualOrgExpireTime" type="date" style="width:100%" placeholder="选择日期" :clearable="true"  />
            </el-form-item>
            <el-form-item label="租户主体经营范围:"  prop="qualBusinessScope" >
              <el-input v-model="formData.qualBusinessScope" :clearable="true"  placeholder="请输入租户主体经营范围" />
            </el-form-item>
            <el-form-item label="租户主体社会一致性代码:"  prop="qualSocialCode" >
              <el-input v-model="formData.qualSocialCode" :clearable="true"  placeholder="请输入租户主体社会一致性代码" />
            </el-form-item>
            <el-form-item label="租户证照照片:"  prop="qualBusinessLicensePic" >
              <el-input v-model="formData.qualBusinessLicensePic" :clearable="true"  placeholder="请输入租户证照照片" />
            </el-form-item>
            <el-form-item label="收款银行名称:"  prop="bankName" >
              <el-input v-model="formData.bankName" :clearable="true"  placeholder="请输入收款银行名称" />
            </el-form-item>
            <el-form-item label="收款银行用户名称:"  prop="bankUserName" >
              <el-input v-model="formData.bankUserName" :clearable="true"  placeholder="请输入收款银行用户名称" />
            </el-form-item>
            <el-form-item label="收款银行卡号:"  prop="bankAccount" >
              <el-input v-model="formData.bankAccount" :clearable="true"  placeholder="请输入收款银行卡号" />
            </el-form-item>
            <el-form-item label="支付宝用户名:"  prop="alipayName" >
              <el-input v-model="formData.alipayName" :clearable="true"  placeholder="请输入支付宝用户名" />
            </el-form-item>
            <el-form-item label="支付宝账号:"  prop="alipayAccount" >
              <el-input v-model="formData.alipayAccount" :clearable="true"  placeholder="请输入支付宝账号" />
            </el-form-item>
            <el-form-item label="微信用户名:"  prop="wechatName" >
              <el-input v-model="formData.wechatName" :clearable="true"  placeholder="请输入微信用户名" />
            </el-form-item>
            <el-form-item label="微信账号:"  prop="wechatAccount" >
              <el-input v-model="formData.wechatAccount" :clearable="true"  placeholder="请输入微信账号" />
            </el-form-item>
            <el-form-item v-if="type !== 'create'" label="状态:"  prop="status" >
              <el-select v-model="formData.status" placeholder="请选择状态" style="width:100%" :clearable="true" >
                <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
              </el-select>
            </el-form-item>
            <!-- <el-form-item label="状态:"  prop="status" >
              <el-input v-model.number="formData.status" :clearable="true" placeholder="请输入状态" />
            </el-form-item> -->
          </el-form>
    </el-drawer>
  </div>
</template>

<script setup>
import {
  createTenantInfo,
  deleteTenantInfo,
  deleteTenantInfoByIds,
  updateTenantInfo,
  findTenantInfo,
  getTenantInfoList
} from '@/api/shop/tenantInfo'

// 全量引入格式化工具 请按需保留
import { getDictFunc, formatDate, formatBoolean, filterDict ,filterDataSource, ReturnArrImg, onDownloadFile } from '@/utils/format'
import { ElMessage, ElMessageBox } from 'element-plus'
// import { create } from 'sortablejs';
import { ref, reactive } from 'vue'

defineOptions({
    name: 'TenantInfo'
})

// 控制更多查询条件显示/隐藏状态
const showAllQuery = ref(false)

// 自动化生成的字典（可能为空）以及字段
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

const searchRule = reactive({
  createdAt: [
    { validator: (rule, value, callback) => {
      if (searchInfo.value.startCreatedAt && !searchInfo.value.endCreatedAt) {
        callback(new Error('请填写结束日期'))
      } else if (!searchInfo.value.startCreatedAt && searchInfo.value.endCreatedAt) {
        callback(new Error('请填写开始日期'))
      } else if (searchInfo.value.startCreatedAt && searchInfo.value.endCreatedAt && (searchInfo.value.startCreatedAt.getTime() === searchInfo.value.endCreatedAt.getTime() || searchInfo.value.startCreatedAt.getTime() > searchInfo.value.endCreatedAt.getTime())) {
        callback(new Error('开始日期应当早于结束日期'))
      } else {
        callback()
      }
    }, trigger: 'change' }
  ],
        createdAt : [{ validator: (rule, value, callback) => {
        if (searchInfo.value.startCreatedAt && !searchInfo.value.endCreatedAt) {
          callback(new Error('请填写结束日期'))
        } else if (!searchInfo.value.startCreatedAt && searchInfo.value.endCreatedAt) {
          callback(new Error('请填写开始日期'))
        } else if (searchInfo.value.startCreatedAt && searchInfo.value.endCreatedAt && (searchInfo.value.startCreatedAt.getTime() === searchInfo.value.endCreatedAt.getTime() || searchInfo.value.startCreatedAt.getTime() > searchInfo.value.endCreatedAt.getTime())) {
          callback(new Error('开始日期应当早于结束日期'))
        } else {
          callback()
        }
      }, trigger: 'change' }],
        updatedAt : [{ validator: (rule, value, callback) => {
        if (searchInfo.value.startUpdatedAt && !searchInfo.value.endUpdatedAt) {
          callback(new Error('请填写结束日期'))
        } else if (!searchInfo.value.startUpdatedAt && searchInfo.value.endUpdatedAt) {
          callback(new Error('请填写开始日期'))
        } else if (searchInfo.value.startUpdatedAt && searchInfo.value.endUpdatedAt && (searchInfo.value.startUpdatedAt.getTime() === searchInfo.value.endUpdatedAt.getTime() || searchInfo.value.startUpdatedAt.getTime() > searchInfo.value.endUpdatedAt.getTime())) {
          callback(new Error('开始日期应当早于结束日期'))
        } else {
          callback()
        }
      }, trigger: 'change' }],
        qualOrgExpireTime : [{ validator: (rule, value, callback) => {
        if (searchInfo.value.startQualOrgExpireTime && !searchInfo.value.endQualOrgExpireTime) {
          callback(new Error('请填写结束日期'))
        } else if (!searchInfo.value.startQualOrgExpireTime && searchInfo.value.endQualOrgExpireTime) {
          callback(new Error('请填写开始日期'))
        } else if (searchInfo.value.startQualOrgExpireTime && searchInfo.value.endQualOrgExpireTime && (searchInfo.value.startQualOrgExpireTime.getTime() === searchInfo.value.endQualOrgExpireTime.getTime() || searchInfo.value.startQualOrgExpireTime.getTime() > searchInfo.value.endQualOrgExpireTime.getTime())) {
          callback(new Error('开始日期应当早于结束日期'))
        } else {
          callback()
        }
      }, trigger: 'change' }],
})

const elFormRef = ref()
const elSearchFormRef = ref()

// =========== 表格控制部分 ===========
const page = ref(1)
const total = ref(0)
const pageSize = ref(10)
const tableData = ref([])
const searchInfo = ref({})

// 重置
const onReset = () => {
  searchInfo.value = {}
  getTableData()
}

// 搜索
const onSubmit = () => {
  elSearchFormRef.value?.validate(async(valid) => {
    if (!valid) return
    page.value = 1
    pageSize.value = 10
    getTableData()
  })
}

// 分页
const handleSizeChange = (val) => {
  pageSize.value = val
  getTableData()
}

// 修改页面容量
const handleCurrentChange = (val) => {
  page.value = val
  getTableData()
}

// 查询
const getTableData = async() => {
  const table = await getTenantInfoList({ page: page.value, pageSize: pageSize.value, ...searchInfo.value })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

// ============== 表格控制部分结束 ===============
const tenantStatusOptions = ref([])

// 获取需要的字典 可能为空 按需保留
const setOptions = async () =>{
  tenantStatusOptions.value = await getDictFunc('tenantStatus')
}

// 获取需要的字典 可能为空 按需保留
setOptions()


// 多选数据
const multipleSelection = ref([])
// 多选
const handleSelectionChange = (val) => {
    multipleSelection.value = val
}

// 删除行
const deleteRow = (row) => {
    ElMessageBox.confirm('确定要删除吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
    }).then(() => {
            deleteTenantInfoFunc(row)
        })
    }

// 多选删除
const onDelete = async() => {
  ElMessageBox.confirm('确定要删除吗?', '提示', {
    confirmButtonText: '确定',
    cancelButtonText: '取消',
    type: 'warning'
  }).then(async() => {
      const ids = []
      if (multipleSelection.value.length === 0) {
        ElMessage({
          type: 'warning',
          message: '请选择要删除的数据'
        })
        return
      }
      multipleSelection.value &&
        multipleSelection.value.map(item => {
          ids.push(item.id)
        })
      const res = await deleteTenantInfoByIds({ ids })
      if (res.code === 0) {
        ElMessage({
          type: 'success',
          message: '删除成功'
        })
        if (tableData.value.length === ids.length && page.value > 1) {
          page.value--
        }
        getTableData()
      }
      })
    }

// 行为控制标记（弹窗内部需要增还是改）
const type = ref('')

// 更新行
const updateTenantInfoFunc = async(row) => {
    const res = await findTenantInfo({ id: row.id })
    type.value = 'update'
    if (res.code === 0) {
        formData.value = res.data
        dialogFormVisible.value = true
    }
}


// 删除行
const deleteTenantInfoFunc = async (row) => {
    const res = await deleteTenantInfo({ id: row.id })
    if (res.code === 0) {
        ElMessage({
                type: 'success',
                message: '删除成功'
            })
            if (tableData.value.length === 1 && page.value > 1) {
            page.value--
        }
        getTableData()
    }
}

// 弹窗控制标记
const dialogFormVisible = ref(false)

// 打开弹窗
const openDialog = () => {
    type.value = 'create'
    dialogFormVisible.value = true
}

// 关闭弹窗
const closeDialog = () => {
    dialogFormVisible.value = false
    formData.value = {
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
        }
}
// 弹窗确定
const enterDialog = async () => {
  console.log("111111111->", formData.value)
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
                closeDialog()
                getTableData()
              }
      })
}

</script>

<style>

</style>
