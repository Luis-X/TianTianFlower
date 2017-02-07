//
//  AppDelegate.swift
//  TianTian
//
//  Created by LuisX on 2016/11/21.
//  Copyright © 2016年 LuisX. All rights reserved.
//

import UIKit
import ChameleonFramework       //变色龙

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
    
        self.window?.rootViewController = ViewController()
        
        self.initViewControllersAndTabBarItems()
        //设置主题
        Chameleon.setGlobalThemeUsingPrimaryColor(FlatRed(), withSecondaryColor: FlatRed(), andContentStyle: .light)

        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    // MARK: 初始化标签栏
    func initViewControllersAndTabBarItems() -> Void {
        
        let rootTabBarController = UITabBarController()
        self.window?.rootViewController = rootTabBarController
        
        let vcNameArray = [["viewController" : "HomeViewController",
                                     "title" : "首页",
                               "normalImage" : "ui_normal@2x.png",
                             "selectedImage" : "ui_selected@2x.png"],
                           ["viewController" : "LoginViewController",
                            "title" : "登录",
                            "normalImage" : "ui_normal@2x.png",
                            "selectedImage" : "ui_selected@2x.png"]]
        rootTabBarController.viewControllers =  self.createNavigationController(vcNameArray)
        
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

