//
//  UserTableViewCell.swift
//  TianTian
//
//  Created by LuisX on 2017/3/3.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.createSubViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func createSubViews() {
        
        let cellBackgroundView = QuicklyUI.viewAddView(addView: self.contentView, backgroundColor: UIColor.orange)
        cellBackgroundView.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 300, height: 80))
            make.left.equalTo(self.contentView)
            make.top.bottom.equalTo(self.contentView)
        }
        
        
    }
    
}
