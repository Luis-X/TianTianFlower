//
//  NetworkManager.swift
//  TianTian
//
//  Created by LuisX on 2017/2/28.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NetworkManager: NSObject {

//MARK: GET请求
    class func GET(url: String, parameters: Dictionary<String, Any>, success: @escaping (_ response : [String : AnyObject])->(), failure: @escaping (_ error : Error)->()) {
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON { (response) in
            switch (response.result){
                //成功
                case .success(let value):
                    success(value as! [String : AnyObject])
                    print("success:")
                //失败
                case .failure(let error):
                    failure(error)
                    print("error:\(error)")
                
            }
        }
        
    }

//MARK: POST请求
   class func POST(url: String, parameters: Dictionary<String, Any>, success: @escaping (_ response : [String : AnyObject])->(), failure: @escaping (_ error : Error)->()) {
        
        Alamofire.request(url, method: .post, parameters: parameters).responseJSON { (response) in
            switch (response.result){
            //成功
            case .success(let value):
                success(value as! [String : AnyObject])
                print("success:")
            //失败
            case .failure(let error):
                failure(error)
                print("error:\(error)")
                
            }
        }
        
    }

    
}
