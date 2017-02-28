//
//  RootTabBarController.swift
//  TianTian
//
//  Created by LuisX on 2017/2/8.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.createMainTabBar()
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

    //初始化TabBar
    func createMainTabBar() {
        self.initViewControllersAndTabBarItems()
    }
    
    // MARK: 初始化标签栏
    func initViewControllersAndTabBarItems() {
        
        let vcNameArray = [
            ["viewController" : "HomeViewController", "title" : "首页", "normalImage" : "ui_normal@2x.png", "selectedImage" : "ui_selected@2x.png"],
            ["viewController" : "LoginViewController", "title" : "登录", "normalImage" : "ui_normal@2x.png", "selectedImage" : "ui_selected@2x.png"],
            ["viewController" : "UserViewController", "title" : "我的", "normalImage" : "ui_normal@2x.png", "selectedImage" : "ui_selected@2x.png"]
        ]
        self.viewControllers =  self.createNavigationController(vcNameArray)
        
    }
    
    //创建视图控制器
    func createNavigationController(_ arrays: Array<Dictionary<String, String>>!) -> Array<UIViewController> {
        
        /*  Swift 中使用   NSClassFromString   注意点:
         *  使用时会遇到的错误代码:
         *      fatal error: unexpectedly found nil while unwrapping an Optinal value
         *  原因:
         *      swift在用字符串转为类型的时候,如果类型是自定义的,需要在类型字符串前面加上项目名称
         */
        
        var resultArray = Array<UIViewController>()
        for itemDic in arrays {
            
            let image = itemDic["normalImage"]
            let selectedImage = itemDic["selectedImage"]
            let title = itemDic["title"]
            
            let className = "TianTian." + itemDic["viewController"]!
            let viewControllerType = NSClassFromString(className) as! BaseViewController.Type
            let viewController = viewControllerType.init()
            let navigationController = UINavigationController(rootViewController:viewController)
            let tabBarItem = UITabBarItem(title:title, image:UIImage(named:image!), selectedImage:UIImage(named:selectedImage!))
            navigationController.tabBarItem = tabBarItem
            resultArray.append(navigationController)
            
        }
        return resultArray
    }

}
