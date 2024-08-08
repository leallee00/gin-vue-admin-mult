// 自动生成模板TenantInfo
package shop

import (
	"time"
)

// tenantInfo表 结构体  TenantInfo
type TenantInfo struct {
    Id  *int `json:"id" form:"id" gorm:"primarykey;column:id;comment:;size:20;"`  //数据编号 
    TenantId  *int `json:"tenantId" form:"tenantId" gorm:"column:tenant_id;comment:租户id;size:20;"`  //租户id 
    CreatedAt  *time.Time `json:"createdAt" form:"createdAt" gorm:"column:created_at;comment:;"`  //创建时间 
    UpdatedAt  *time.Time `json:"updatedAt" form:"updatedAt" gorm:"column:updated_at;comment:;"`  //更新时间 
    BaseColor  string `json:"baseColor" form:"baseColor" gorm:"column:base_color;comment:基础颜色;size:32;"`  //基础颜色 
    Liaison  string `json:"liaison" form:"liaison" gorm:"column:liaison;comment:租户联系人;size:128;"`  //租户联系人 
    Phone  string `json:"phone" form:"phone" gorm:"column:phone;comment:电话;size:16;"`  //电话 
    Email  string `json:"email" form:"email" gorm:"column:email;comment:邮箱;size:191;"`  //邮箱 
    OwnerName  string `json:"ownerName" form:"ownerName" gorm:"column:owner_name;comment:负责人姓名;size:128;"`  //负责人姓名 
    OwnerCode  string `json:"ownerCode" form:"ownerCode" gorm:"column:owner_code;comment:负责人身份证号码;size:32;"`  //负责人身份证号码 
    OwnerIdCardFront  string `json:"ownerIdCardFront" form:"ownerIdCardFront" gorm:"column:owner_id_card_front;comment:负责人身份证正面;size:255;"`  //负责人身份证正面 
    OwnerIdCardBack  string `json:"ownerIdCardBack" form:"ownerIdCardBack" gorm:"column:owner_id_card_back;comment:负责人身份证背面;size:255;"`  //负责人身份证背面 
    OwnerSelfTackCardPic  string `json:"ownerSelfTackCardPic" form:"ownerSelfTackCardPic" gorm:"column:owner_self_tack_card_pic;comment:负责人手持身份证照片;size:255;"`  //负责人手持身份证照片 
    OwnerAddr  string `json:"ownerAddr" form:"ownerAddr" gorm:"column:owner_addr;comment:负责人地址;size:191;"`  //负责人地址 
    OwnerPhone  string `json:"ownerPhone" form:"ownerPhone" gorm:"column:owner_phone;comment:负责人手机;size:16;"`  //负责人手机 
    OwnerEmail  string `json:"ownerEmail" form:"ownerEmail" gorm:"column:owner_email;comment:负责人邮箱;size:64;"`  //负责人邮箱 
    OwnerSex  *int `json:"ownerSex" form:"ownerSex" gorm:"column:owner_sex;comment:负责人性别 ;size:10;"`  //负责人性别  
    QualOrgLegal  string `json:"qualOrgLegal" form:"qualOrgLegal" gorm:"column:qual_org_legal;comment:租户主体法人代表;size:128;"`  //租户主体法人代表 
    QualOrgName  string `json:"qualOrgName" form:"qualOrgName" gorm:"column:qual_org_name;comment:租户主体名称;size:255;"`  //租户主体名称 
    QualOrgAddr  string `json:"qualOrgAddr" form:"qualOrgAddr" gorm:"column:qual_org_addr;comment:租户主体地址;size:512;"`  //租户主体地址 
    QualOrgExpireTime  *time.Time `json:"qualOrgExpireTime" form:"qualOrgExpireTime" gorm:"column:qual_org_expire_time;comment:租户主体过期时间;"`  //租户主体过期时间 
    QualBusinessScope  string `json:"qualBusinessScope" form:"qualBusinessScope" gorm:"column:qual_business_scope;comment:租户主体经营范围;size:1024;"`  //租户主体经营范围 
    QualSocialCode  string `json:"qualSocialCode" form:"qualSocialCode" gorm:"column:qual_social_code;comment:租户主体社会一致性代码;size:64;"`  //租户主体社会一致性代码 
    QualBusinessLicensePic  string `json:"qualBusinessLicensePic" form:"qualBusinessLicensePic" gorm:"column:qual_business_license_pic;comment:租户证照照片;size:255;"`  //租户证照照片 
    BankName  string `json:"bankName" form:"bankName" gorm:"column:bank_name;comment:收款银行名称;size:128;"`  //收款银行名称 
    BankUserName  string `json:"bankUserName" form:"bankUserName" gorm:"column:bank_user_name;comment:收款银行用户名称;size:128;"`  //收款银行用户名称 
    BankAccount  string `json:"bankAccount" form:"bankAccount" gorm:"column:bank_account;comment:收款银行卡号;size:64;"`  //收款银行卡号 
    AlipayName  string `json:"alipayName" form:"alipayName" gorm:"column:alipay_name;comment:支付宝用户名;size:64;"`  //支付宝用户名 
    AlipayAccount  string `json:"alipayAccount" form:"alipayAccount" gorm:"column:alipay_account;comment:支付宝账号;size:64;"`  //支付宝账号 
    WechatName  string `json:"wechatName" form:"wechatName" gorm:"column:wechat_name;comment:微信用户名;size:64;"`  //微信用户名 
    WechatAccount  string `json:"wechatAccount" form:"wechatAccount" gorm:"column:wechat_account;comment:微信账号;size:64;"`  //微信账号 
    Status  *int `json:"status" form:"status" gorm:"column:status;comment:状态;size:10;"`  //状态 
}


// TableName tenantInfo表 TenantInfo自定义表名 tenant_info
func (TenantInfo) TableName() string {
    return "tenant_info"
}

