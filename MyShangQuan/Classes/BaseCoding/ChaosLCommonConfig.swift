//
//  ChaosLCommonConfig.swift
//  JMTenpay
//
//  Created by JuMa on 2018/6/27.
//  Copyright © 2018年 JuMa. All rights reserved.
//

import UIKit

/// 判断是否iPhoneX
let XMM_IsiPhoneX:Bool = (max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.height) == 812.0 ? true : false)

///顶部根据是否X判断是否空出一定的距离
let XMM_BottomSpace:CGFloat = XMM_IsiPhoneX ? 10.0 : 0.00

/// 尺寸配置
let XMM_ScreenWidth:CGFloat = UIScreen.main.bounds.width
let XMM_ScreenHeight:CGFloat = UIScreen.main.bounds.height
let XMM_StatusBar:CGFloat = XMM_IsiPhoneX ? 44.0 : 20.0
let XMM_NavHeight:CGFloat = XMM_IsiPhoneX ? 88.0 : 64.0
let XMM_TabBarHeight:CGFloat = XMM_IsiPhoneX ? 83.0 : 49.0
///由于原型图为4.7尺寸，所以这里获取不同机型下的比例数值
var XMM_GetScaleValue: (CGFloat) -> CGFloat = {value in
    return XMM_ScreenWidth/375.0*value
}
///这里返回合适的尺寸
var XMM_GetSuitableValue: (CGFloat) -> CGFloat = {value in
    if(XMM_ScreenWidth <= 376){
        return XMM_ScreenWidth/375.0*value
    }else{
        return value
    }
}


/// 颜色配置
var XMM_RGBAColor: (CGFloat, CGFloat, CGFloat, CGFloat) -> UIColor = {red, green, blue, alpha in
    return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha);
}
var XMM_RGBColor: (CGFloat, CGFloat, CGFloat) -> UIColor = {red, green, blue in
    return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1);
}
var XMM_ColorWithHex: (NSInteger) -> UIColor = {hex in
    return UIColor(red: ((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0, green: ((CGFloat)((hex & 0xFF00) >> 8)) / 255.0, blue: ((CGFloat)(hex & 0xFF)) / 255.0, alpha: 1);
}
var XMM_ColorWithHexAndAlpha: (NSInteger,CGFloat) -> UIColor = {hex,alpha in
    return UIColor(red: ((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0, green: ((CGFloat)((hex & 0xFF00) >> 8)) / 255.0, blue: ((CGFloat)(hex & 0xFF)) / 255.0, alpha: alpha);
}
let XMM_BaseColor = XMM_ColorWithHex(0x22acf5)//主色调
let XMM_AssistColor = XMM_ColorWithHex(0x4A83C4)//辅色调
let XMM_TextBlackColor = XMM_ColorWithHex(0x646464)//文字黑色
let XMM_TextDarkGrayColor = XMM_ColorWithHex(0x666666)//文字深灰色
let XMM_PriceRedColor = XMM_RGBColor(215,0,0)//价格红
let XMM_TextGrayColor = XMM_ColorWithHex(0x999999)//文字灰色
let XMM_BackViewPageColor = XMM_ColorWithHex(0xecf3f9)//背景色
let XMM_SepColor = XMM_RGBColor(239,239,239)//分割线颜色
let XMM_SepHeight = XMM_RoundRect_Scala*0.9//分割线高度
let XMM_TextWhiteColor = XMM_ColorWithHex(0xffffff)//文字白色
let XMM_RoundRect_Scala:CGFloat = (XMM_ScreenWidth==414 ? 1.2 : (XMM_ScreenWidth==320 ? 0.9 : 1))//圆角比例

///常用代码配置
//let XMM_GlobaleUrl = "http:47.97.179.147:8026/unite/service"
let XMM_GlobaleUrl = "http://47.104.233.134:8093/unite/service"///请求url
//47.97.179.147:8026 测试
//47.104.233.134:8093 生产

///上架测试账号
let XMM_Test_Account = "13000000007"

///本地存储key
let JM_UserDefaults_Second:String = "JM_UserDefaults_Second"///不是第一次进来
let JM_IsSpeakEnable:String = "JM_IsSpeakEnable"///百度语音 - 0-不播放，1-播放
let JM_DeviceToken:String = "JM_DeviceToken"
let JM_UserDefaults_UserInfo:String = "JM_UserDefaults_UserInfo"
let JM_UserDefaults_OrganCode:String = "JM_UserDefaults_OrganCode"
let JMTenpayUpDateMerchantName:String = "JMTenpayUpDateMerchantName"///用户名称
let JM_Home_AuthState_Notification:String = "JM_Home_AuthState_Notification"//状态
///储存登录用户名和密码
let JM_UserDefaults_UserLoginPhone:String = "JM_UserDefaults_UserLoginPhone"
let JM_UserDefaults_UserLoginPwd:String = "JM_UserDefaults_UserLoginPwd"

///通知
let SGFS_User_LoginSuccess_Notification:String = "SGFS_User_LoginSuccess_Notification"
let SGFS_User_LoginOut_Notification:String = "SGFS_User_LoginOut_Notification"
let SGFS_Main_RefreshData_Notification:String = "SGFS_Main_RefreshData_Notification"
let SGFS_Home_AuthState_Notification:String = "SGFS_Home_AuthState_Notification"
let SGFS_Home_Release_Notification:String = "SGFS_Home_Release_Notification"///让home页释放掉多余页面

