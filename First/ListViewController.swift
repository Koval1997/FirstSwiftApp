//
//  ListViewController.swift
//  First
//
//  Created by user138725 on 5/4/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

struct Product {
    let imageName   : String
    let title       : String
    let price       : Float
}

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var products: [Product] = []
    
    let cellIdentifier = "kCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        products = [
            Product(imageName: " ", title: "Product 0", price: 10000),
            Product(imageName: " ", title: "Product 1", price: 20000),
            Product(imageName: " ", title: "Product 2", price: 30000)
        ]
    }
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ProductTableViewCell
        let product = products[indexPath.row]
        
        cell?.iconImageView?.image = UIImage(named: product.imageName)
        cell?.titleLabel?.text = product.title
        cell?.priceLabel?.text = "\(product.price) ₽";
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let productViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        
        let product = products[indexPath.row]
        
        /*ListViewController.product = product*/
        
        self.navigationController?.pushViewController(productViewController, animated: true)
    }
    
}
