//
//  OnlineManagerModel.swift
//  TianTian
//
//  Created by LuisX on 2017/3/9.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit
import SwiftyJSON
class OnlineManagerModel: NSObject {

        var editEarnings : String!
        var tester : String!
        var chatUrl : String!
        var commissionStatement : String!
        var compressImage : Bool!
        var detailH5 : String!
        var detailShowNotice : Bool!
        var detailTab : String!
        var documentDesc : String!
        var giftBagDetails : String!
        var homeActivityBanner : String!
        var homeBar : String!
        var homeHeader : String!
        var incomeGuideMultiple : String!
        var incomeGuideTitle : String!
        var interceptUrlList2 : String!
        var introducePages : String!
        var introduceUrl : String!
        var inviteLink : String!
        var isCheck : String!
        var loginSwitch : String!
        var menu : String!
        var productDetailTitleFontSize : String!
        var productSearchTitleFontSize : String!
        var productSpecialTitleFontSize : String!
        var refreshBackGroundColor : String!
        var shopNameErrorTip : String!
        var showComments : Bool!
        var showInventory : Bool!
        var sobotSdkChat : Bool!
        var tabbarBackGroundColor : String!
        var tabbarLineColor : String!
        var titleBarBackImage : String!
        var titleBarTextColor : String!
        var weexPages2 : String!
        
        
        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            editEarnings = json["EditEarnings"].stringValue
            tester = json["Tester"].stringValue
            chatUrl = json["chatUrl"].stringValue
            commissionStatement = json["commissionStatement"].stringValue
            compressImage = json["compressImage"].boolValue
            detailH5 = json["detailH5"].stringValue
            detailShowNotice = json["detailShowNotice"].boolValue
            detailTab = json["detailTab"].stringValue
            documentDesc = json["documentDesc"].stringValue
            giftBagDetails = json["giftBagDetails"].stringValue
            homeActivityBanner = json["homeActivityBanner"].stringValue
            homeBar = json["homeBar"].stringValue
            homeHeader = json["homeHeader"].stringValue
            incomeGuideMultiple = json["incomeGuideMultiple"].stringValue
            incomeGuideTitle = json["incomeGuideTitle"].stringValue
            interceptUrlList2 = json["interceptUrlList2"].stringValue
            introducePages = json["introducePages"].stringValue
            introduceUrl = json["introduceUrl"].stringValue
            inviteLink = json["inviteLink"].stringValue
            isCheck = json["isCheck"].stringValue
            loginSwitch = json["loginSwitch"].stringValue
            menu = json["menu"].stringValue
            productDetailTitleFontSize = json["productDetailTitleFontSize"].stringValue
            productSearchTitleFontSize = json["productSearchTitleFontSize"].stringValue
            productSpecialTitleFontSize = json["productSpecialTitleFontSize"].stringValue
            refreshBackGroundColor = json["refreshBackGroundColor"].stringValue
            shopNameErrorTip = json["shopNameErrorTip"].stringValue
            showComments = json["showComments"].boolValue
            showInventory = json["showInventory"].boolValue
            sobotSdkChat = json["sobotSdkChat"].boolValue
            tabbarBackGroundColor = json["tabbarBackGroundColor"].stringValue
            tabbarLineColor = json["tabbarLineColor"].stringValue
            titleBarBackImage = json["titleBarBackImage"].stringValue
            titleBarTextColor = json["titleBarTextColor"].stringValue
            weexPages2 = json["weexPages2"].stringValue
        }
        
}
