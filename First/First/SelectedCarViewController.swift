//
//  SelectedCarViewController.swift
//  First
//
//  Created by user138725 on 5/30/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit


class SelectedCarViewController: UIViewController {

    public var oneCar: Car?
    
    @IBOutlet weak var selectCarImage: UIImageView!
    @IBOutlet weak var selectCarName: UILabel!
    @IBOutlet weak var selectCarPrice: UILabel!
    @IBOutlet weak var selectSalerPhone: UILabel!
    @IBOutlet weak var selectCarMileage: UILabel!
    @IBOutlet weak var selectCarDescr: UITextView!
    @IBOutlet weak var selectSalerName: UILabel!
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectCarName.text = (oneCar?.carName)! + ", " + (oneCar?.carYear)!
        selectCarImage.image = UIImage(named:(oneCar?.carImage)!);
        
        selectCarPrice.text = oneCar?.carPrice
        selectSalerPhone.text = oneCar?.salerPhone
        selectCarMileage.text = oneCar?.mileage
        selectCarDescr.text = oneCar?.description
        selectSalerName.text = oneCar?.salerName
       
        // Do any additional setup after loading the view.
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

}
