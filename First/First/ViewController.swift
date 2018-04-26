//
//  ViewController.swift
//  First
//
//  Created by user138725 on 4/25/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

struct HomePage{
    let autorization:String;
    let non_autorization:String;
    let compName:String;
    let image:String;
}

class ViewController: UIViewController {
    
    var homePage:HomePage!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var AutorizationButton: UIButton!
   
    @IBOutlet weak var NonAutorizationButton: UIButton!
    
    @IBOutlet weak var CompanyNameLabel: UILabel!
    
    
    func SetupPage()
    {
        homePage = HomePage(autorization:"Авторизоваться в приложении", non_autorization:"Без авторизации", compName:"drom.ru", image:"20367490")
    }
    
    func LoadPage()
    {
        Image.image = UIImage(named:homePage.image);
        
        AutorizationButton.setTitle(homePage.autorization, for: .normal);
        
        NonAutorizationButton.setTitle(homePage.non_autorization, for: .normal);
        
        CompanyNameLabel.text = homePage.compName;
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated);
        LoadPage();
    }
    
    @IBAction func AutoButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func NonAutoButtonAction(_ sender: Any) {
    }
}

