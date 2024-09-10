// 自动生成模板UserAuthInfo
package shop

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// userAuthInfo表 结构体  UserAuthInfo
type UserAuthInfo struct {
    global.GVA_MODEL
    EmergencyContactName  string `json:"emergencyContactName" form:"emergencyContactName" gorm:"column:emergency_contact_name;comment:紧急联系人姓名;size:255;"`  //紧急联系人姓名 
    EmergencyContactPhone  string `json:"emergencyContactPhone" form:"emergencyContactPhone" gorm:"column:emergency_contact_phone;comment:紧急联系人手机号码;size:255;"`  //紧急联系人手机号码 
    IdCardBack  string `json:"idCardBack" form:"idCardBack" gorm:"column:id_card_back;comment:身份证反面;size:255;"`  //身份证反面 
    IdCardFront  string `json:"idCardFront" form:"idCardFront" gorm:"column:id_card_front;comment:身份证正面图片;size:255;"`  //身份证正面图片 
    IdCardNo  string `json:"idCardNo" form:"idCardNo" gorm:"column:id_card_no;comment:身份证号码;size:255;"`  //身份证号码 
    UserId  *int `json:"userId" form:"userId" gorm:"column:user_id;comment:用户id;size:19;"`  //用户id 
    CreatedBy  uint   `gorm:"column:created_by;comment:创建者"`
    UpdatedBy  uint   `gorm:"column:updated_by;comment:更新者"`
    DeletedBy  uint   `gorm:"column:deleted_by;comment:删除者"`
}


// TableName userAuthInfo表 UserAuthInfo自定义表名 user_auth_info
func (UserAuthInfo) TableName() string {
    return "user_auth_info"
}

