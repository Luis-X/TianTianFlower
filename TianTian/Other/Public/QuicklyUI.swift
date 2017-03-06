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
    
    /// 系统push
    ///
    /// - Parameters:
    ///   - navigationController:
    ///   - viewController:
    ///   - hidden:                 是否隐藏Tabbar
    ///   - animated:               是否动画
    class func navigationControllerPushViewController(_ navigationController:UINavigationController!, _ viewController:UIViewController!, hidden:Bool, animated:Bool){
        
        viewController.hidesBottomBarWhenPushed = hidden
        navigationController.pushViewController(viewController, animated: animated)
        
    }
    
    //MARK: -基础控件
    
    /// UIView
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - backgroundColor:        背景颜色
    class func viewAddView(addView:UIView, backgroundColor:UIColor) -> UIView {
        
        let view = UIView()
        view.backgroundColor = backgroundColor
        addView.addSubview(view)
        return view
        
    }
    
    /// UILabel
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - textColor:              文本颜色
    ///   - font:                   字体
    class func labelAddView(addView:UIView, textColor:UIColor, font:UIFont) -> UILabel {
        
        let label = UILabel()
        //label.backgroundColor = UIColor.orange
        label.textColor = textColor
        label.font = font
        addView.addSubview(label)
        return label
        
    }
    
    /// UIButton
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - title:                  标题
    ///   - titleColor:             标题颜色
    ///   - font:                   字体
    ///   - cornerRadius:           圆角
    ///   - backgroundColor:        背景颜色
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
    
    /// UIImageView
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - clipsToBounds:          边界裁剪
    ///   - contentMode:            显示方式
    class func imageViewAddView(addView:UIView, clipsToBounds:Bool, contentMode:UIViewContentMode) -> UIImageView {
        
        let imageView = UIImageView()
        //imageView.backgroundColor = UIColor.orange
        imageView.clipsToBounds = clipsToBounds
        imageView.contentMode = contentMode
        addView.addSubview(imageView)
        return imageView
        
    }

    /// UITextField
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - placeholder:            占位符
    ///   - textColor:              文本颜色
    ///   - font:                   字体
    class func textfieldAddView(addView:UIView, placeholder:String, textColor:UIColor, font:UIFont) -> UITextField {
        
        let textfiled = UITextField()
        //textfiled.backgroundColor = UIColor.orange
        textfiled.placeholder = placeholder
        textfiled.textColor = textColor
        textfiled.font = font
        textfiled.autocapitalizationType = .none            //关闭首字母大写
        textfiled.autocorrectionType = .no                  //关闭自动更正
        addView.addSubview(textfiled)
        return textfiled
        
    }
    
    /// UITableView
    ///
    /// - Parameters:
    ///   - addView:                添加View
    ///   - delegate:               代理
    ///   - dataSource:             代理
    ///   - style:                  列表样式
    ///   - separatorStyle:         分割样式
    class func tableviewAddView(addView:UIView, delegate:UITableViewDelegate, dataSource:UITableViewDataSource, style:UITableViewStyle, separatorStyle:UITableViewCellSeparatorStyle) -> UITableView {
        
        let tableview = UITableView(frame: CGRect.zero, style: style)
        //tableview.backgroundColor = UIColor.orange
        tableview.separatorStyle = separatorStyle
        tableview.delegate = delegate
        tableview.dataSource = dataSource
        addView.addSubview(tableview)
        return tableview
        
    }
}
