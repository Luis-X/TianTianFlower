//
//  RecommendCollectionViewCell.swift
//  TianTian
//
//  Created by LuisX on 2017/2/8.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class RecommendCollectionViewCell: UICollectionViewCell {
    var priceLabel:UILabel!
    var pictureImageView:UIImageView!
    
    
    //重写初始化方法
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        self.createCellMainSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //创建视图
    func createCellMainSubViews() {
        
        pictureImageView = QuicklyUI.imageViewAddView(addView: self.contentView, clipsToBounds: true, contentMode: .scaleToFill)
        pictureImageView.image = UIImage(named: "picture.png")
        pictureImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.contentView)
        }
        
        priceLabel = QuicklyUI.labelAddView(addView: self.contentView, textColor: .orange, font: .systemFont(ofSize: 15))
        priceLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.contentView)
            make.left.greaterThanOrEqualTo(self.contentView).offset(10)
            make.right.equalTo(self.contentView).offset(-10)
        }
    }
}
