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

    
    /// 初始化数据
    func initailData(){
        viewSize = CGSize(width: 100, height: 100)
    }
    
    /// 创建视图
     func createMainViews(){
        
        let mainView = ASDisplayNode()
        mainView.backgroundColor = UIColor(gradientStyle: .leftToRight, withFrame: CGRect(x: 0, y: 0, width: viewSize.width, height: viewSize.height), andColors: [FlatRed(), FlatBlue()])
        self.view.addSubnode(mainView)
        mainView.view.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(100)
            make.center.equalTo(self.view)
        }
        
        let view1 = ASDisplayNode()
        self.view.addSubnode(view1)
        view1.backgroundColor = UIColor.blue;
        view1.view.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 50, height: 50))
            make.center.equalTo(self.view)
        }
 
        
    }
    
}
