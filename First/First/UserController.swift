//
//  UserController.swift
//  
//
//  Created by user138725 on 5/29/18.
//

import UIKit
import RealmSwift
import Realm


class UserController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var count : Int?
    
    @IBOutlet weak var userNameLabel: UITextField!
    
    @IBOutlet weak var passwordLabel: UITextField!
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func regButton(_ sender: Any) {
        let user = UserModel()
        user.userName = userNameLabel.text!
        user.password = passwordLabel.text!
        
        let realm = try! Realm()
        
        try! realm.write {
            realm.add(user)
            print(user.userName)
        }
    }
    @IBOutlet weak var enterUsername: UITextField!
    
    @IBOutlet weak var enterPassword: UITextField!
    
    
    
    @IBAction func usernameAction(_ sender: UITextField) {
        let realm = try! Realm()
        let user = realm.objects(UserModel.self).filter("password == %@ and userName == %@", enterPassword.text as Any, enterUsername.text as Any)
        count = user.count
        print(count as! Int)
    }
    
    @IBAction func enterButton(_ sender: Any) {
        if (count != 0)
        {
            shouldPerformSegue(withIdentifier: "segue", sender: Any.self)
        } else {print("close")}
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
