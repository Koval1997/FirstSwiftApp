//
//  JsonRequest.swift
//  First
//
//  Created by user138725 on 5/31/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import Foundation
import Alamofire

class JsonRequest: NSObject {
    
    
    func getCars(completion: @escaping ([Car]) -> Void) {
        
        let request = Alamofire.request("http://139.59.139.197:8001/maxk/cars")
        request.responseJSON { (response) in
            guard let json = response.result.value as? [String: Any] else {
                completion([])
                return
            }
            
            guard let success = json["success"] as? Bool else {
                completion([])
                return
            }
            
            guard success else {
                completion([])
                return
            }
            
            guard let data = json["data"] as? [[String: Any]] else {
                completion([])
                return
            }
            
            var cars: [Car] = []
            
            for item in data {
                guard let car = Car.parse(json: item) else {
                    continue
                }
                
                cars.append(car)
            }
            
            completion(cars)
        }
        
    }
    
}
