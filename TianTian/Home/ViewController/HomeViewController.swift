//
//  HomeViewController.swift
//  TianTian
//
//  Created by LuisX on 2016/11/21.
//  Copyright © 2016年 LuisX. All rights reserved.
//

import UIKit
import ChameleonFramework       //变色龙
import SwiftyJSON

class HomeViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var viewSize:CGSize!
    var mainBackgroundImageView: UIImageView!
    var mainDayLabel: UILabel!
    var mainMonthLabel: UILabel!
    var mainMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initailData()
        self.createMainViews()
        self.navigationBarLucency(open: true)
        self.networkGetHomeData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationBarLucency(open: Bool){
        self.title = "Swift"
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = open
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
        mainBackgroundImageView = QuicklyUI.imageViewAddView(addView: self.view, clipsToBounds: true, contentMode: .scaleToFill)
        mainBackgroundImageView.image = UIImage(named: "background-default-iphone6@2x.png")
        mainBackgroundImageView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
        
        //日期
        mainDayLabel = QuicklyUI.labelAddView(addView: self.view, textColor: FlatWhite(), font: .systemFont(ofSize: 45))
        mainDayLabel.text = Date().format(with: "dd")
        mainDayLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(10)
            make.top.equalTo(self.view).offset(64 + 10)
        }
        
        //月份
        mainMonthLabel = QuicklyUI.labelAddView(addView: self.view, textColor: FlatWhite(), font: .systemFont(ofSize: 15))
        mainMonthLabel.text = String(Date().month) + "月"
        mainMonthLabel.snp.makeConstraints { (make) in
            make.left.equalTo(mainDayLabel.snp.right).offset(2)
            make.bottom.equalTo(mainDayLabel).offset(-10)
        }

        //公告
        mainMessageLabel = QuicklyUI.labelAddView(addView: self.view, textColor: FlatWhite(), font: .systemFont(ofSize: 15))
        mainMessageLabel.text = "每一天都是美好的一天"
        mainMessageLabel.numberOfLines = 0
        mainMessageLabel.snp.makeConstraints { (make) in
            make.left.equalTo(mainDayLabel)
            make.top.equalTo(mainDayLabel.snp.bottom)
            make.right.lessThanOrEqualTo(self.view).offset(-10)
        }
        
        self.createMainRecommendCollectionView()
    }
    
    //推荐模块
    func createMainRecommendCollectionView() {
        
        let item_width = CGFloat(SCREEN_WIDTH / 2.8);
        let item_height = CGFloat(180)
        let item_space = CGFloat(10)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = item_space
        flowLayout.minimumInteritemSpacing = item_space
        flowLayout.sectionInset = UIEdgeInsetsMake(item_space, item_space, item_space, item_space)
        flowLayout.itemSize = CGSize(width: item_width, height: (item_height - (2 * item_space)))
        
        let mainRecommendCollectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
        mainRecommendCollectionView.backgroundColor = UIColor.clear
        mainRecommendCollectionView.dataSource = self
        mainRecommendCollectionView.delegate = self
        self.view.addSubview(mainRecommendCollectionView)
        mainRecommendCollectionView.register(RecommendCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        mainRecommendCollectionView.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.view)
            make.bottom.equalTo(self.view).offset(-64 - 20)
            make.height.equalTo(item_height)
        }
        
    }
    
//MARK: -UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! RecommendCollectionViewCell
        cell.priceLabel.text = String(indexPath.row)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
//MARK: -UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let viewController = GoodsDetailViewController()
        QuicklyUI.navigationControllerPushViewController(self.navigationController, viewController, hidden: true, animated: true)
        
    }
    
//MARK: -网络请求
    
    func networkGetHomeData() {

        NetworkManager.GET(url: HostAddressManager().requestAPI(api: "login"), parameters: ["username": 456, "password": 123], success: { (success) in
            print("成功:", JSON(success))
        }) { (failure) in
            print("失败", failure)
            
        }

    }
}
