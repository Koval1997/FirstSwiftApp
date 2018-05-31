//
//  TableViewController.swift
//  First
//
//  Created by user138725 on 5/4/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

struct Product{
    let imageName:String;
    let title:String;
    let price:Int;
}

class TableViewController: UIViewController {

    var products: [Product] = []
    
    let cellIdentifier = "kCellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        products = [
            Product(imageName: "20367490", title: "Product 0", price: 10000),
            Product(imageName: "20367490", title: "Product 1", price: 20000),
            Product(imageName: "20367490", title: "Product 2", price: 30000)
        ]
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell
        let product = products[indexPath.row]
        
        cell?.iconImage?.image = UIImage(named: product.imageName)
        cell?.nameLabel?.text = product.title
        cell?.priceLabel?.text = "\(product.price) ₽";
        
        return cell!
    }
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let productViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductViewController") as? ProductViewController else {
            return
        }
        
        let product = products[indexPath.row]
        
        productViewController.product = product
        
        self.navigationController?.pushViewController(productViewController, animated: true)
    }*/
    
}
