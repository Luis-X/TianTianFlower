//
//  BaseViewController.swift
//  TianTian
//
//  Created by LuisX on 2016/11/29.
//  Copyright © 2016年 LuisX. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = THEME_color_background_normal;
        
        // Do any additional setup after loading the view.
        //self.baseDidLoadAllNetworks()
        self.baseDidLoadAllDatas()
        self.baseDidLoadAllViews()
        
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
    func baseDidLoadAllDatas() {
        
    }
    
    /// 初始化视图
    func baseDidLoadAllViews() {
        
    }
    
    /// 初始化网络请求
    func baseDidLoadAllNetworks() {
        
    }
}
