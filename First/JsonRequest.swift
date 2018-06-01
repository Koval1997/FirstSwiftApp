//
//  JsonRequest.swift
//  First
//
//  Created by user138725 on 5/31/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import Foundation
import Alamofire

class JsonParser : NSObject{
    
     public static func getCars() {
        request("https://api.myjson.com/bins/jkp26").responseJSON { responseJSON in
            
            let value = responseJSON.result.value
            print(value ?? 0)
        }
    }
}
