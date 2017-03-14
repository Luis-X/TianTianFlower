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
        self.selectionStyle = .none
        self.backgroundColor = UIColor.clear
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
        
        let cellBackgroundView = QuicklyUI.viewAddView(addView: self.contentView, backgroundColor: UIColor.randomFlat)
        cellBackgroundView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(5)
            make.bottom.equalToSuperview().offset(-5)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        
        
    }
    
}
