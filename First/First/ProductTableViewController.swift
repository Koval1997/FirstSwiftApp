//
//  ProductTableViewController.swift
//  First
//
//  Created by user138725 on 5/4/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

var cars = ["Mazda 6", "Toyota Camry", "Nissan Teana"]
var carsPrice = ["1450000", "1760000", "1230000"]
var myIndex = 0

class ProductTableViewController: UITableViewController {

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row]
        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}
