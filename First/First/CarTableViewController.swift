//
//  CarTableViewController.swift
//  First
//
//  Created by user138725 on 5/29/18.
//  Copyright © 2018 user138725. All rights reserved.
//

import UIKit

struct Car{
    let carName : String?
    let carPrice : String?
    let carImage : String?
    let carYear : String?
    let salerPhone : String?
    let description : String?
    let mileage : String?
    let salerName : String?
    
    static func parse(json: Dictionary<String, Any>) -> Car? {
        guard let autoName = json["auto"] as? String, let price = json["Price"] as? String, let saler_phone = json["Phone"] as? String,
        let descr = json["Descr"] as? String,  let mile = json["Mileage"] as? String, let saler_name = json["name"] as? String else {
            return nil
        }
        
        return Car(carName: autoName, carPrice: price, carImage: autoName, carYear: "2015", salerPhone: saler_phone, description: descr, mileage: mile, salerName: saler_name)
    }
}


class CarTableViewController: UITableViewController {

    @IBOutlet var tblCars: UITableView!
    public var cars: [Car] = []
    var row = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCars.delegate = self
        setup()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }
    
    public func setup() {
        
        if (cars.count == 0){
        cars = [
            Car(carName: "Nissan Teana", carPrice: "1100000", carImage: "Nissan Teana", carYear: "2012", salerPhone: "88003553535", description: "Куплен в 2013г. Крашенных элементов нет, бесключевой доступ, запуск с кнопки, цветной дисплей, Сигнализация с автозапуском, 2 комплекта резины. Я 2-й хозяин, автомобиль беспроблемный очень надежный. Поменяны все жидкости, фильтра, колодки. Автосалоны не звоните.", mileage: "18900", salerName:"NIKOLAI" ),
            Car(carName: "Toyota Camry", carPrice: "1250000", carImage: "Toyota Camry", carYear: "2016", salerPhone: "88003553535", description: "Хороший японский автомобиль, надёжный и очень резвый. Пробег реальный, обслуживалась вовремя. Есть косяки по кузову. Резина ёкохама - зима, новая. Все вопросы при осмотре.", mileage: "12400", salerName:"PETR" ),
            Car(carName: "Mazda 6", carPrice: "1400000", carImage: "Mazda 6", carYear: "2017", salerPhone: "88003553535", description: "Продам мазду 6 в отличном техническом и внешнем состоянии! Все работает отлично! Документы в порядке!", mileage: "15000", salerName:"FEDOR")
        ]
    }
    }
    
    public func load() {
        JsonRequest().getCars(){ cars in
            self.cars = cars
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        
        let thisCar = cars[indexPath.row]
        
        cell?.carName?.text = thisCar.carName
        cell?.carPhoto?.image = UIImage(named:thisCar.carImage!)
        cell?.carYear.text = thisCar.carYear! + " Г. В."
        cell?.salerPhone.text = thisCar.carPrice! + " руб"
        
        return cell!
    }
    
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      performSegue(withIdentifier: "showCar", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SelectedCarViewController
        let oneCar = cars[(tblCars.indexPathForSelectedRow?.row)!]
        destination.oneCar = oneCar
    }
    
}
