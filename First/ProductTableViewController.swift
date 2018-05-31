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
var carsDescr = ["Mazda 6 — среднеразмерный автомобиль японской компании Mazda. Выпускается с 2002 года. В Японии и Китае продается под названием Mazda Atenza.","Toyota Camry — автомобиль компании Toyota. Производится на заводах в Японии, США, Австралии, России и Китае. По состоянию на 2015 год выпускается седьмое поколение автомобиля. В зависимости от источника и поколения модели автомобиль относят к среднему или бизнес-классу.","Nissan Teana — автомобиль среднего/бизнес класса, выпускаемый с 2003 года по настоящее время. Предыдущие модели — Nissan Cefiro и Nissan Laurel. С 2014 года продается третье поколение автомобиля."]
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
