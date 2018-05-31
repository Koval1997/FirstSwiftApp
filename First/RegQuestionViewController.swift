//
//  RegQuestionViewController.swift
//  First
//
//  Created by user138725 on 5/29/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

class RegQuestionViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var qImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func LoadPage()
    {
        question.lineBreakMode = .byWordWrapping
        question.numberOfLines = 0
        question.textAlignment = .center;
        question.text = "Хотите зарегестрироваться в приложении Drom?"
        qImage.image = UIImage(named: "20367490")
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated);
        LoadPage();
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
