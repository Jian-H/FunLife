//
//  FLHomeDataManager.swift
//  FunLife
//
//  Created by fangtianios on 2023/8/2.
//  Copyright © 2023 china. All rights reserved.
//

import UIKit

class FLHomeDataManager: NSObject {
    public var contentArray : [FLHomeDataItem] = {
        
        var dataArray : Array<FLHomeDataItem> = Array()
        var contentArray : [String] = ["Moya", "Kingfisher"]

        for (index, name) in contentArray.enumerated() {
            var item : FLHomeDataItem = FLHomeDataItem()
            item.id = index
            item.name = name
            dataArray.append(item)
        }
        
        return dataArray
    }()
}

class FLHomeDataItem : NSObject {
    var id : Int = 0
    var name : String?
}
