<template>
  <div>
    <div class="gva-search-box">
      <el-form ref="elSearchFormRef" :inline="true" :model="searchInfo" class="demo-form-inline" :rules="searchRule" @keyup.enter="onSubmit">
        <el-form-item label="id字段" prop="id">
            
             <el-input v-model.number="searchInfo.id" placeholder="搜索条件" />

        </el-form-item>
        <el-form-item label="createdAt字段" prop="createdAt">
            
            <template #label>
            <span>
              createdAt字段
              <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
                <el-icon><QuestionFilled /></el-icon>
              </el-tooltip>
            </span>
          </template>
            <el-date-picker v-model="searchInfo.startCreatedAt" type="datetime" placeholder="开始日期" :disabled-date="time=> searchInfo.endCreatedAt ? time.getTime() > searchInfo.endCreatedAt.getTime() : false"></el-date-picker>
            —
            <el-date-picker v-model="searchInfo.endCreatedAt" type="datetime" placeholder="结束日期" :disabled-date="time=> searchInfo.startCreatedAt ? time.getTime() < searchInfo.startCreatedAt.getTime() : false"></el-date-picker>

        </el-form-item>
        <el-form-item label="updatedAt字段" prop="updatedAt">
            
            <template #label>
            <span>
              updatedAt字段
              <el-tooltip content="搜索范围是开始日期（包含）至结束日期（不包含）">
                <el-icon><QuestionFilled /></el-icon>
              </el-tooltip>
            </span>
          </template>
            <el-date-picker v-model="searchInfo.startUpdatedAt" type="datetime" placeholder="开始日期" :disabled-date="time=> searchInfo.endUpdatedAt ? time.getTime() > searchInfo.endUpdatedAt.getTime() : false"></el-date-picker>
            —
            <el-date-picker v-model="searchInfo.endUpdatedAt" type="datetime" placeholder="结束日期" :disabled-date="time=> searchInfo.startUpdatedAt ? time.getTime() < searchInfo.startUpdatedAt.getTime() : false"></el-date-picker>

        </el-form-item>
        <el-form-item label="商户UUID" prop="uuid">
         <el-input v-model="searchInfo.uuid" placeholder="搜索条件" />
        </el-form-item>
        <el-form-item label="父商户id" prop="parentTenantId">
         <el-input v-model="searchInfo.parentTenantId" placeholder="搜索条件" />
        </el-form-item>
        <el-form-item label="商户名称" prop="tenantName">
         <el-input v-model="searchInfo.tenantName" placeholder="搜索条件" />

        </el-form-item>
           <el-form-item label="状态" prop="status">
            <el-select v-model="searchInfo.status" clearable placeholder="请选择" @clear="()=>{searchInfo.status=undefined}">
              <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
            </el-select>
            </el-form-item>

            <el-form-item label="类型" prop="tenantType">
            <el-select v-model="searchInfo.tenantType" clearable placeholder="请选择" @clear="()=>{searchInfo.tenantType=undefined}">
              <el-option v-for="(item,key) in tenantTypeOptions" :key="key" :label="item.label" :value="item.value" />
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
        @sort-change="sortChange"
        >
        <el-table-column type="selection" width="55" />
        
        <el-table-column sortable align="left" label="编号" prop="id" width="80" />
         <el-table-column sortable align="left" label="创建" prop="createdAt" width="120">
            <template #default="scope">{{ formatDate(scope.row.createdAt) }}</template>
         </el-table-column>
         <el-table-column sortable align="left" label="更新" prop="updatedAt" width="120">
            <template #default="scope">{{ formatDate(scope.row.updatedAt) }}</template>
         </el-table-column>
        <el-table-column align="left" label="商户UUID" prop="uuid" width="200" />
        <el-table-column align="left" label="父商户id" prop="parentTenantId" width="80" />
        <el-table-column align="left" label="商户名称" prop="tenantName" width="200" />
        <el-table-column align="left" label="访问秘钥" prop="accessKeyId" width="200" />
        <el-table-column align="left" label="访问秘钥密码" prop="accessKeySecret" width="200" />
        <el-table-column sortable align="left" label="状态" prop="status" width="80">
            <template #default="scope">
            {{ filterDict(scope.row.status,tenantStatusOptions) }}
            </template>
        </el-table-column>
        <el-table-column sortable align="left" label="商户类型" prop="tenantType" width="120">
            <template #default="scope">
            {{ filterDict(scope.row.tenantType,tenantTypeOptions) }}
            </template>
        </el-table-column>
        <el-table-column sortable align="left" label="主图" prop="headerImg" width="120" >
          <template #default="scope">
            <el-image
          style="width: 100px; height: 100px"
          :src="scope.row.headerImg"
          fit="fill"></el-image>
            </template>
        </el-table-column>

        <el-table-column align="left" label="操作" fixed="right" min-width="240">
            <template #default="scope">
            <el-button type="primary" link icon="edit" class="table-button" @click="updateTenantFunc(scope.row)">变更</el-button>
            <el-button type="primary" link icon="delete" @click="deleteRow(scope.row)">删除</el-button>
            <el-button type="primary" link icon="edit" class="table-button" @click="tenantDetail(scope.row)">详情</el-button>
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
            <!-- <el-form-item label="id字段:"  prop="id" >
              <el-input v-model.number="formData.id" :clearable="true" placeholder="请输入id字段" />
            </el-form-item>
            <el-form-item label="createdAt字段:"  prop="createdAt" >
              <el-date-picker v-model="formData.createdAt" type="date" style="width:100%" placeholder="选择日期" :clearable="true"  />
            </el-form-item>
            <el-form-item label="updatedAt字段:"  prop="updatedAt" >
              <el-date-picker v-model="formData.updatedAt" type="date" style="width:100%" placeholder="选择日期" :clearable="true"  />
            </el-form-item> -->
            <!-- <el-form-item label="商户UUID:"  prop="uuid" >
              <el-input v-model="formData.uuid" :clearable="true"  placeholder="请输入商户UUID" />
            </el-form-item> -->
            <el-form-item label="父商户id:"  prop="parentTenantId" >
              <el-input v-model="formData.parentTenantId" :clearable="true"  placeholder="请输入父商户id" />
            </el-form-item>
            <el-form-item label="商户名称:"  prop="tenantName" >
              <el-input v-model="formData.tenantName" :clearable="true"  placeholder="请输入商户名称" />
            </el-form-item>
            <!-- <el-form-item label="访问秘钥:"  prop="accessKeyId" >
              <el-input v-model="formData.accessKeyId" :clearable="true"  placeholder="请输入访问秘钥" />
            </el-form-item>
            <el-form-item label="访问秘钥密码:"  prop="accessKeySecret" >
              <el-input v-model="formData.accessKeySecret" :clearable="true"  placeholder="请输入访问秘钥密码" />
            </el-form-item> -->
            <el-form-item label="状态:"  prop="status" >
              <el-select v-model="formData.status" placeholder="请选择状态" style="width:100%" :clearable="true" >
                <el-option v-for="(item,key) in tenantStatusOptions" :key="key" :label="item.label" :value="item.value" />
              </el-select>
            </el-form-item>
            <el-form-item label="商户类型:"  prop="tenantType" >
              <el-select v-model="formData.tenantType" placeholder="请选择类型" style="width:100%" :clearable="true" >
                <el-option v-for="(item,key) in tenantTypeOptions" :key="key" :label="item.label" :value="item.value" />
              </el-select>
            </el-form-item>
            <el-form-item label="主图:"  prop="headerImg" >
              <el-input v-model="formData.headerImg" :clearable="true"  placeholder="请输入主图" />
            </el-form-item>
          </el-form>
    </el-drawer>
  </div>
</template>

<script setup>
import {
  createTenant,
  deleteTenant,
  deleteTenantByIds,
  updateTenant,
  findTenant,
  getTenantList
} from '@/api/shop/tenant'

// 全量引入格式化工具 请按需保留
import { getDictFunc, formatDate, formatBoolean, filterDict ,filterDataSource, ReturnArrImg, onDownloadFile } from '@/utils/format'
import { ElMessage, ElMessageBox } from 'element-plus'
import { ref, reactive } from 'vue'
import { useRouter } from 'vue-router'

const router = useRouter()

defineOptions({
    name: 'Tenant'
})

// 控制更多查询条件显示/隐藏状态
const showAllQuery = ref(false)

// 自动化生成的字典（可能为空）以及字段
const tenantStatusOptions = ref([])
const tenantTypeOptions = ref([])
const formData = ref({
        id: undefined,
        createdAt: new Date(),
        updatedAt: new Date(),
        uuid: '',
        parentTenantId:0,
        tenantType:'',
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
               },
               {
                   whitespace: true,
                   message: '不能只输入空格',
                   trigger: ['input', 'blur'],
              }
              ],
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
})

const elFormRef = ref()
const elSearchFormRef = ref()

// =========== 表格控制部分 ===========
const page = ref(1)
const total = ref(0)
const pageSize = ref(10)
const tableData = ref([])
const searchInfo = ref({})
// 排序
const sortChange = ({ prop, order }) => {
  const sortMap = {
            id: 'id',
            createdAt: 'created_at',
            updatedAt: 'updated_at',
            status: 'status',
  }

  let sort = sortMap[prop]
  if(!sort){
   sort = prop.replace(/[A-Z]/g, match => `_${match.toLowerCase()}`)
  }

  searchInfo.value.sort = sort
  searchInfo.value.order = order
  getTableData()
}

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
  const table = await getTenantList({ page: page.value, pageSize: pageSize.value, ...searchInfo.value })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

// ============== 表格控制部分结束 ===============

// 获取需要的字典 可能为空 按需保留
const setOptions = async () =>{
    tenantStatusOptions.value = await getDictFunc('tenantStatus')
    tenantTypeOptions.value = await getDictFunc('tenant_type')
    
    console.log("tenantTypeOptions=", tenantTypeOptions)
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
            deleteTenantFunc(row)
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
      const res = await deleteTenantByIds({ ids })
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
const updateTenantFunc = async(row) => {
    const res = await findTenant({ id: row.id })
    type.value = 'update'
    if (res.code === 0) {
        formData.value = res.data
        dialogFormVisible.value = true
    }
}

const tenantDetail = async(row)=>{
  // 导航到详情页面
  // name: "autoCodeEdit",
  //     params: {
  //   id: row.ID,
  // },
  router.push({ name: "tenantInfo",params: {"tenantId":row.tenantId} })
}


// 删除行
const deleteTenantFunc = async (row) => {
    const res = await deleteTenant({ id: row.id })
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
        createdAt: new Date(),
        updatedAt: new Date(),
        uuid: '',
        parentTenantId:0,
        TenantType:0,
        tenantName: '',
        accessKeyId: '',
        accessKeySecret: '',
        status: '',
        headerImg: '',
        }
}
// 弹窗确定
const enterDialog = async () => {
    console.log("111111111", formData.value)
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
                closeDialog()
                getTableData()
              }
      })
}

</script>

<style>

</style>
