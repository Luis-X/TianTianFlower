//
//  UserViewController.swift
//  TianTian
//
//  Created by LuisX on 2017/2/28.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

class UserViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
    }

    override func baseDidLoadAllViews() {
    
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
    
    
    func createMainTableView() {
        //往回走注定失败,停下来注定迷茫,往前走坚定不移注定成功
        
        let mainTableView = QuicklyUI.tableviewAddView(addView: self.view, delegate: self, dataSource: self, style: .grouped, separatorStyle: .singleLine)
        mainTableView.register(UserTableViewCell.self, forCellReuseIdentifier: "cell")
        mainTableView.register(UserTableViewHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        mainTableView.separatorStyle = .none
        mainTableView.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(-20)
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        return headerView
        
    }
    
    //MARK: -UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
