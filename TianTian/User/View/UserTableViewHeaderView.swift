//
//  UserTableViewHeaderView.swift
//  TianTian
//
//  Created by LuisX on 2017/3/10.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class UserTableViewHeaderView: UITableViewHeaderFooterView {
    
    let showBar_height = 50                 //栏目高度
    let showBar_horizontal_inner_space = 20 //栏目水平内部空间
    let showBar_horizontal_outer_space = 10 //栏目水平外部空间
    let showBar_horizontal_line_space = 30  //分割线间距
    
    var backgroundImageView: UIImageView!   //背景图
    var headerImageView: UIImageView!       //头像
    var titleLabel: UILabel!                //标题
    var subTitleLabel: UILabel!             //副标题
    
    

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        createSubviews()
        subTitleLabel.text = "连续登录99天"
        titleLabel.text = "累计获取12支"
        headerImageView.image = UIImage(named: "picture")

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func createSubviews() {
        createBackgroundImageView()
        createUserInfoShowBar()
    }
    
    
    /// 背景图
    func createBackgroundImageView() {
        
        backgroundImageView = QuicklyUI.imageViewAddView(addView: self, clipsToBounds: true, contentMode: .scaleAspectFill)
        backgroundImageView.image = UIImage(named: "picture")
        backgroundImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(self)
            make.bottom.equalTo(self).offset(-5)
        }
        
    }
    
    
    /// 用户展示栏
    func createUserInfoShowBar() {
        
        let showBarView = QuicklyUI.viewAddView(addView: backgroundImageView, backgroundColor: THEME_color_view_white)
        showBarView.layer.masksToBounds = true
        showBarView.layer.cornerRadius = 5
        showBarView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(30)
            make.left.equalToSuperview().offset(showBar_horizontal_outer_space)
            make.right.equalToSuperview().offset(-showBar_horizontal_outer_space)
            make.height.equalTo(showBar_height)
        }
        
        let headImage_size = (showBar_height / 3 * 2)
        headerImageView = QuicklyUI.imageViewAddView(addView: showBarView, clipsToBounds: true, contentMode: .scaleAspectFill)
        headerImageView.layer.masksToBounds = true
        headerImageView.layer.cornerRadius = CGFloat(headImage_size / 2)
        headerImageView.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.size.equalTo(headImage_size)
            make.left.equalTo(showBarView).offset(showBar_horizontal_inner_space)
        }
        
        titleLabel = QuicklyUI.labelAddView(addView: showBarView, textColor: THEME_color_text_black, font: .systemFont(ofSize: 12))
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalTo(showBarView).offset(-showBar_horizontal_inner_space)
        }
        
        let showBarLine = QuicklyUI.viewAddView(addView: showBarView, backgroundColor: THEME_color_line_normal)
        showBarLine.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalTo(titleLabel.snp.left).offset(-showBar_horizontal_line_space)
            make.size.equalTo(CGSize(width: 1, height: 20))
        }
        
        subTitleLabel = QuicklyUI.labelAddView(addView: showBarView, textColor: THEME_color_text_black, font: .systemFont(ofSize: 12))
        subTitleLabel.textAlignment = .right
        subTitleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalTo(showBarLine).offset(-showBar_horizontal_line_space)
            make.left.greaterThanOrEqualTo(headerImageView.snp.right).offset(10)
        }
        
    }
    
    
    
}
