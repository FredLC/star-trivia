//
//  ViewController.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-02.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var hairLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var homeworldButton: UIButton!
    @IBOutlet weak var vehiclesButton: UIButton!
    @IBOutlet weak var starshipsButton: UIButton!
    @IBOutlet weak var filmsButton: UIButton!
    
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupView(person: Person) {
        nameLabel.text = person.name
        heightLabel.text = person.height
        massLabel.text = person.mass
        hairLabel.text = person.hair
        birthYearLabel.text = person.birthYear
        genderLabel.text = person.gender
        
        homeworldButton.isEnabled = !person.homeworldUrl.isEmpty
        vehiclesButton.isEnabled = !person.vehicleUrls.isEmpty
        starshipsButton.isEnabled = !person.starshipUrls.isEmpty
        filmsButton.isEnabled = !person.filmUrls.isEmpty
    }

    @IBAction func randomButtonPressed(_ sender: Any) {
        let random = Int.random(in: 1 ... 87)
        personApi.getRandomPerson(id: random) { (person) in
            if let person = person {
               self.setupView(person: person)
            }
        }
    }
    
    
    @IBAction func homeworldButtonPressed(_ sender: Any) {
    }
    
    @IBAction func vehiclesButtonPressed(_ sender: Any) {
    }
    @IBAction func starshipsButtonPressed(_ sender: Any) {
    }
    
    @IBAction func filmsButtonPressed(_ sender: Any) {
    }
    
    
    
}

