//
//  CarInteractor.swift
//  First
//
//  Created by user138725 on 6/1/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import Foundation
import Alamofire

class CarInteractor: NSObject
{
    
    func getCars() -> [Car] {
        var cars = [Car]()
        let request = Alamofire.request("https://api.myjson.com/bins/f76ja")
        request.responseJSON { (response) in
            do {
                let decoder = JSONDecoder()
                cars = try decoder.decode([Car].self, from: response.data!)
            } catch let error {
                print(error)
            }
        }
        return cars
    }
}
