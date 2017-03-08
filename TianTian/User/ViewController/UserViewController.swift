//
//  UserViewController.swift
//  TianTian
//
//  Created by LuisX on 2017/2/28.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class UserViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    var mainBackgroundImageView: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func baseDidLoadAllViews() {
        
        createBackgroundImageView()
        createUserInfoShowBar()
        createMainTableView()
        
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
    
    func createBackgroundImageView() {
        
        mainBackgroundImageView = QuicklyUI.imageViewAddView(addView: self.view, clipsToBounds: true, contentMode: .scaleAspectFill)
        mainBackgroundImageView.image = UIImage(named: "picture")
        mainBackgroundImageView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(self.view)
            make.height.equalTo(300)
        }
        
    }

    
    /// 用户展示栏
    func createUserInfoShowBar() {
        
        let showBarView = QuicklyUI.viewAddView(addView: mainBackgroundImageView, backgroundColor: THEME_color_view_white)
        showBarView.layer.masksToBounds = true
        showBarView.layer.cornerRadius = 5
        showBarView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(30)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
            make.height.equalTo(50)
        }
        
        let headImage_size = 30
        let showBarHeadImageView = QuicklyUI.imageViewAddView(addView: showBarView, clipsToBounds: true, contentMode: .scaleAspectFill)
        showBarHeadImageView.image = UIImage(named: "picture")
        showBarHeadImageView.layer.masksToBounds = true
        showBarHeadImageView.layer.cornerRadius = CGFloat(headImage_size / 2)
        showBarHeadImageView.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.size.equalTo(headImage_size)
            make.left.equalTo(showBarView).offset(headImage_size)
        }
        
        
        let showBarLine = QuicklyUI.viewAddView(addView: showBarView, backgroundColor: THEME_color_line_normal)
        showBarLine.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalTo(showBarView).offset(-130)
            make.size.equalTo(CGSize(width: 1, height: 20))
        }
        
        let showBarSubTitleLabel = QuicklyUI.labelAddView(addView: showBarView, textColor: THEME_color_text_black, font: .systemFont(ofSize: 12))
        showBarSubTitleLabel.text = "连续登录99天"
        showBarSubTitleLabel.textAlignment = .right
        showBarSubTitleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalTo(showBarLine.snp.right).offset(30)
            make.right.lessThanOrEqualTo(showBarView).offset(-15)
        }
        
        let showBarTitleLabel = QuicklyUI.labelAddView(addView: showBarView, textColor: THEME_color_text_black, font: .systemFont(ofSize: 12))
        showBarTitleLabel.text = "累计获取12支"
        showBarTitleLabel.textAlignment = .center
        showBarTitleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalTo(showBarLine.snp.left).offset(-30)
            make.left.greaterThanOrEqualTo(showBarHeadImageView.snp.right).offset(15)
        }
        
    }
    
    func createMainTableView() {
        //往回走注定失败,停下来注定迷茫,往前走坚定不移注定成功
    
        let mainTableView = QuicklyUI.tableviewAddView(addView: self.view, delegate: self, dataSource: self, style: .plain, separatorStyle: .singleLine)
        mainTableView.register(UserTableViewCell.self, forCellReuseIdentifier: "cell")
        mainTableView.separatorStyle = .none
        mainTableView.snp.makeConstraints { (make) in
            make.top.equalTo(mainBackgroundImageView.snp.bottom)
            make.left.right.bottom.equalTo(self.view)
        }
        
    }
    
    //MARK: -UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
        
    }
    
    //MARK: -UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
