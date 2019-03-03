//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-03.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class VehiclesVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var passengersLabel: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    var person: Person!
    let api = VehicleApi()
    var vehicles = [String]()
    var currentVehicle = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        vehicles = person.vehicleUrls
        previousButton.isEnabled = false
        nextButton.isEnabled = vehicles.count > 1
        guard let firstVehicle = vehicles.first else { return }
        getVehicle(url: firstVehicle)
    }
    
    func getVehicle(url: String) {
        api.getVehicle(url: url) { (vehicle) in
            if let vehicle = vehicle {
                self.setupView(vehicle: vehicle)
            }
        }
    }
    
    func setupView(vehicle: Vehicle) {
        nameLabel.text = vehicle.name
        modelLabel.text = vehicle.model
        manufacturerLabel.text = vehicle.manufacturer
        costLabel.text = vehicle.cost
        lengthLabel.text = vehicle.length
        speedLabel.text = vehicle.speed
        crewLabel.text = vehicle.crew
        passengersLabel.text = vehicle.passengers
    }
    
    @IBAction func previousPressed(_ sender: Any) {
        currentVehicle -= 1
        setButtonState()
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        currentVehicle += 1
        setButtonState()
    }
    
    func setButtonState() {
        previousButton.isEnabled = currentVehicle == 0 ? false : true
        nextButton.isEnabled = currentVehicle == vehicles.count - 1 ? false : true
//        if currentVehicle == 0 {
//            previousButton.isEnabled = false
//        } else {
//            previousButton.isEnabled = true
//        }
//
//        if currentVehicle == vehicles.count - 1 {
//            nextButton.isEnabled = false
//        } else {
//            nextButton.isEnabled = true
//        }
        
        getVehicle(url: vehicles[currentVehicle])
    }
    
}
