//
//  QuicklyUI.swift
//  TianTian
//
//  Created by LuisX on 2017/2/8.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class QuicklyUI: NSObject {
    //MARK: -系统
    /**
     系统push
     
     @param navigationController
     @param viewController
     @param hidden               是否隐藏Tabbar
     @param animated             是否动画
     */
    class func navigationControllerPushViewController(_ navigationController:UINavigationController!, _ viewController:UIViewController!, hidden:Bool, animated:Bool){
        
        viewController.hidesBottomBarWhenPushed = hidden
        navigationController.pushViewController(viewController, animated: animated)
        
    }
    
    //MARK: -基础控件
    /**
     UILabel
     
     @param addView   添加View
     @param textColor 文本颜色
     @param font      字体
     */
    class func labelAddView(addView:UIView, textColor:UIColor, font:UIFont) -> UILabel {
        
        let label = UILabel()
        //label.backgroundColor = UIColor.orange
        label.textColor = textColor
        label.font = font
        addView.addSubview(label)
        return label
        
    }
    
    /**
     UIButton
     
     @param addView         添加View
     @param title           标题
     @param titleColor      标题颜色
     @param font            字体
     @param cornerRadius    圆角
     @param backgroundColor 背景颜色
     */
    class func buttonAddView(addView:UIView, title:String, titleColor:UIColor, font:UIFont, cornerRadius:CGFloat, backgroundColor:UIColor) -> UIButton {
        
        let button = UIButton(type: .custom)
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = font
        button.layer.cornerRadius = cornerRadius
        addView.addSubview(button)
        return button
        
    }
    
    /**
     UIImageView
     
     @param addView       添加View
     @param clipsToBounds 边界裁剪
     @param contentMode   显示方式
     */
    class func imageViewAddView(addView:UIView, clipsToBounds:Bool, contentMode:UIViewContentMode) -> UIImageView {
        
        let imageView = UIImageView()
        //imageView.backgroundColor = UIColor.orange
        imageView.clipsToBounds = clipsToBounds
        imageView.contentMode = contentMode
        addView.addSubview(imageView)
        return imageView
        
    }

    /**
     UITextField
     
     @param addView       添加View
     @param placeholder   占位符
     @param textColor     文本颜色
     @param font          字体
     */
    class func textfieldAddView(addView:UIView, placeholder:String, textColor:UIColor, font:UIFont) -> UITextField {
        
        let textfiled = UITextField()
        textfiled.backgroundColor = UIColor.orange
        textfiled.placeholder = placeholder
        textfiled.textColor = textColor
        textfiled.font = font
        textfiled.autocapitalizationType = .none            //关闭首字母大写
        textfiled.autocorrectionType = .no                  //关闭自动更正
        addView.addSubview(textfiled)
        return textfiled
        
    }
}
