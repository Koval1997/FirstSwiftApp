//
//  CarTableViewCell.swift
//  First
//
//  Created by user138725 on 5/29/18.
//  Copyright © 2018 user138725. All rights reserved.
//
import UIKit
import Foundation

class ProductTableViewCell: UITableViewCell {
    
    var picture : UIImage?
    var name :String?
    var price:Int?
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
