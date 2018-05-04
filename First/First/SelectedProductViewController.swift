//
//  SelectedProductViewController.swift
//  First
//
//  Created by user138725 on 5/4/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

class SelectedProductViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = cars[myIndex]
        priceLabel.text = carsPrice[myIndex]
        iconImage.image = UIImage(named: cars[myIndex] + ".png")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
