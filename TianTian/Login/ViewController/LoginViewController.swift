//
//  LoginViewController.swift
//  TianTian
//
//  Created by LuisX on 2017/2/7.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    var mainLogoImageView: UIImageView!
    var mainBackgroundImageView: UIImageView!
    var usernameTextFiled: UITextField!
    var passwordTextFiled: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialData()
        createMainViews()
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
    
    func initialData() {
        
        
    }
    
    func createMainViews() {
        
        createMainBackgroundImageView(image: "background-default-iphone6@2x.png")
        createMainLogoImageView(image: "picture.png")
        createMainInputView(usernamePlaceholder: "用户名", passwordPlaceholder: "密码")
        createMainLoginButton(title: "登录", subTitle: "忘记密码?")
        
    }
    
    func createMainBackgroundImageView(image: String) {
        
        mainBackgroundImageView = QuicklyUI.imageViewAddView(addView: self.view, clipsToBounds: true, contentMode: .scaleAspectFit)
        mainBackgroundImageView.isUserInteractionEnabled = true
        mainBackgroundImageView.image = UIImage(named: image)
        mainBackgroundImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
        
    }
    
    func createMainLogoImageView(image: String) {
        
        mainLogoImageView = QuicklyUI.imageViewAddView(addView: mainBackgroundImageView, clipsToBounds: true, contentMode: .scaleAspectFill)
        mainLogoImageView.image = UIImage(named: image)
        mainLogoImageView.snp.makeConstraints { (make) in
            make.top.equalTo(mainBackgroundImageView).offset(60)
            make.centerX.equalTo(mainBackgroundImageView)
            make.size.equalTo(CGSize(width: 100, height: 100))
        }
        
    }
    
    func createMainInputView(usernamePlaceholder: String, passwordPlaceholder: String) {
        
        let textfiled_height = 40
        let line_height = 1.5
        let space = 35
        let font = UIFont.boldSystemFont(ofSize: 20)
        
        
        usernameTextFiled = QuicklyUI.textfieldAddView(addView: mainBackgroundImageView, placeholder: usernamePlaceholder, textColor: UIColor.flatBlack, font: font)
        usernameTextFiled.snp.makeConstraints { (make) in
            make.top.equalTo(mainLogoImageView.snp.bottom).offset(50)
            make.left.equalTo(mainBackgroundImageView).offset(space)
            make.right.equalTo(mainBackgroundImageView).offset(-space)
            make.height.equalTo(textfiled_height)
        }
        
        let usernameLine = QuicklyUI.viewAddView(addView: mainBackgroundImageView, backgroundColor: UIColor.flatGray)
        usernameLine.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextFiled.snp.bottom)
            make.left.right.equalTo(usernameTextFiled)
            make.height.equalTo(line_height)
        }
        
        passwordTextFiled = QuicklyUI.textfieldAddView(addView: mainBackgroundImageView, placeholder: passwordPlaceholder, textColor: UIColor.flatBlack, font: font)
        passwordTextFiled.snp.makeConstraints { (make) in
            make.top.equalTo(usernameLine.snp.bottom).offset(20)
            make.left.right.equalTo(usernameLine)
            make.height.equalTo(textfiled_height)
        }
        
        let passwordLine = QuicklyUI.viewAddView(addView: mainBackgroundImageView, backgroundColor: UIColor.flatGray)
        passwordLine.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextFiled.snp.bottom)
            make.left.right.equalTo(passwordTextFiled)
            make.height.equalTo(line_height)
        }
        
    }
    
    func createMainLoginButton(title: String, subTitle: String) {
        
        let loginButton = QuicklyUI.buttonAddView(addView: mainBackgroundImageView, title: title, titleColor: UIColor.flatWhite, font: UIFont.boldSystemFont(ofSize: 20), cornerRadius: 5, backgroundColor: UIColor.flatPurple)
        loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextFiled.snp.bottom).offset(50)
            make.left.right.equalTo(passwordTextFiled)
            make.height.equalTo(50)
        }
        loginButton.addTarget(self, action: #selector(self.loginButtonAction), for: .touchUpInside)
        
        let forgetButton = QuicklyUI.buttonAddView(addView: mainBackgroundImageView, title: subTitle, titleColor: UIColor.flatGray, font: UIFont.systemFont(ofSize: 15), cornerRadius: 0, backgroundColor: UIColor.clear)
        forgetButton.snp.makeConstraints { (make) in
            make.top.equalTo(loginButton.snp.bottom)
            make.centerX.equalTo(loginButton)
            make.height.equalTo(44)
        }
        forgetButton.addTarget(self, action: #selector(self.forgetButtonAction), for: .touchUpInside)
        
    }
    
    
//MARK: -事件处理
    func loginButtonAction() {
        print("login" + usernameTextFiled.text! + passwordTextFiled.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
    func forgetButtonAction() {
        print("forget")
    }
}
