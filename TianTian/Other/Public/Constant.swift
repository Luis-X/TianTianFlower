//
//  Constant.swift
//  TianTian
//
//  Created by LuisX on 2016/11/21.
//  Copyright © 2016年 LuisX. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

//----------颜色----------
/// RGB颜色
///
/// - Parameters:
///   - r: red值
///   - g: green值
///   - b: blue值
/// - Returns: UIColor
func RGB(_ r:CGFloat,g:CGFloat,b:CGFloat) ->UIColor{
    return UIColor(red: r/225.0, green: g/225.0, blue: b/225.0, alpha: 1.0)
}

/// 主题
public let THEME_color_main = UIColor(hexString: "#97CC00")!                         //主色调
/// 背景
public let THEME_color_background_normal = UIColor(hexString: "#D5D5D5")!
/// 视图
public let THEME_color_view_gray = UIColor(hexString: "#D5D5D5")!
public let THEME_color_view_white = UIColor(hexString: "#FFFFFF")!
/// 分割线
public let THEME_color_line_normal = UIColor(hexString: "#C6CEDB")!
public let THEME_color_line_gray = UIColor(hexString: "#D5D5D5")!
/// 文本
public let THEME_color_text_black = UIColor(hexString: "#333333")!
public let THEME_color_text_white = UIColor(hexString: "#FFFFFF")!
public let THEME_color_text_orange = UIColor(hexString: "#FF5D42")!
public let THEME_color_text_red = UIColor(hexString: "#FB474B")!
public let THEME_color_text_yellow = UIColor(hexString: "#FFBA48")!



//----------尺寸----------
//设备屏幕尺寸
public let SCREEN_WIDTH = UIScreen.main.bounds.size.width
public let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

//获取视图尺寸
public func VIEW_WIDTH(_ view:UIView)->CGFloat{
    return view.frame.size.width
}
public func VIEW_HEIGHT(_ view:UIView)->CGFloat{
    return view.frame.size.height
}
