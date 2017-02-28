//
//  HostAddressManager.swift
//  TianTian
//
//  Created by LuisX on 2017/2/28.
//  Copyright © 2017年 LuisX. All rights reserved.
//

import UIKit

enum HostAddressConfig {
    case release    //线上
    case debug      //线下
}

class HostAddressManager: NSObject {
    
    public func requestAPI(api: String) -> String {
        return hostAddressConfig(host: .debug) + api
    }
    
    private func hostAddressConfig(host: HostAddressConfig) -> String {
        
        switch host {
        case .release:
            return  "http://127.0.0.1:8181/m/"
        case .debug:
            return  "http://127.0.0.1:8181/api/"
        }
        
    }

}
