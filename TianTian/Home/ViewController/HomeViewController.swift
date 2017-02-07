//
//  HomeViewController.swift
//  TianTian
//
//  Created by LuisX on 2016/11/21.
//  Copyright © 2016年 LuisX. All rights reserved.
//

import UIKit
import AsyncDisplayKit          //保持界面流畅性
import ChameleonFramework       //变色龙

class HomeViewController: BaseViewController {

    var viewSize:CGSize!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initailData()
        self.createMainViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    /*
     *  初始化数据
     */
    func initailData(){
        viewSize = CGSize(width: 100, height: 100)
    }
    
    /*
     *  创建视图
     */
     func createMainViews(){
        
        //背景
        let mainBackgroundImageView = UIImageView()
        self.view.addSubview(mainBackgroundImageView)
        mainBackgroundImageView.backgroundColor = FlatCoffee()
        mainBackgroundImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
        
        //日期
        let mainNowDayLabel = UILabel()
        self.view.addSubview(mainNowDayLabel)
        //mainNowDayLabel.backgroundColor = FlatOrange()
        mainNowDayLabel.text = "06"
        mainNowDayLabel.font = UIFont.systemFont(ofSize: 45)
        mainNowDayLabel.textColor = FlatBlack()
        mainNowDayLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(10)
            make.top.equalTo(self.view).offset(64 + 10)
        }
        
        //月份
        let mainNowMonthLabel = UILabel()
        self.view.addSubview(mainNowMonthLabel)
        //mainNowMonthLabel.backgroundColor = FlatRed()
        mainNowMonthLabel.text = "2月"
        mainNowMonthLabel.font = UIFont.systemFont(ofSize: 15)
        mainNowDayLabel.textColor = FlatBlack()
        mainNowMonthLabel.snp.makeConstraints { (make) in
            make.left.equalTo(mainNowDayLabel.snp.right).offset(2)
            make.bottom.equalTo(mainNowDayLabel).offset(-8)
        }

        //公告
        let mainMessageLabel = UILabel()
        self.view.addSubview(mainMessageLabel)
        //mainMessageLabel.backgroundColor = FlatOrange()
        mainMessageLabel.text = "每一天都是美好的一天"
        mainMessageLabel.font = UIFont.systemFont(ofSize: 15)
        mainMessageLabel.textColor = FlatBlack()
        mainMessageLabel.numberOfLines = 0
        mainMessageLabel.snp.makeConstraints { (make) in
            make.left.equalTo(mainNowDayLabel)
            make.top.equalTo(mainNowDayLabel.snp.bottom)
            make.right.lessThanOrEqualTo(self.view).offset(-10)
        }
        
        
    }
    
    
    
}
