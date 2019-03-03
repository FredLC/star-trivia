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

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
    }
    
    @IBAction func previousPressed(_ sender: Any) {
    }
    
    @IBAction func nextPressed(_ sender: Any) {
    }
    
}
