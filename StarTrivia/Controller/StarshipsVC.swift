//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-03.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var makerLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var passengersLabel: UILabel!
    @IBOutlet weak var cargoCapacityLabel: UILabel!
    @IBOutlet weak var hyperdriveLabel: UILabel!
    @IBOutlet weak var previousButton: FadeEnabledButton!
    @IBOutlet weak var nextButton: FadeEnabledButton!
    
    
    var person: Person!
    let api = StarshipApi()
    var starships = [String]()
    var currentStarship = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        starships = person.starshipUrls
        previousButton.isEnabled = false
        nextButton.isEnabled = starships.count > 1
        guard let firstStarship = starships.first else { return }
        getStarship(url: firstStarship)
    }
    
    func getStarship(url: String) {
        api.getStarship(url: url) { (starship) in
            if let starship = starship {
                self.setupView(starship: starship)
            }
        }
    }
    
    func setupView(starship: Starship) {
        nameLabel.text = starship.name
        modelLabel.text = starship.model
        makerLabel.text = starship.manufacturer
        costLabel.text = starship.cost
        lengthLabel.text = starship.length
        speedLabel.text = starship.speed
        crewLabel.text = starship.crew
        passengersLabel.text = starship.passengers
        cargoCapacityLabel.text = starship.cargoCapacity
        hyperdriveLabel.text = starship.hyperdriveRating
    }
    
    func setButtonState() {
        previousButton.isEnabled = currentStarship == 0 ? false : true
        nextButton.isEnabled = currentStarship == starships.count - 1 ? false : true
        getStarship(url: starships[currentStarship])
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        currentStarship -= 1
        setButtonState()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        currentStarship += 1
        setButtonState()
    }
    
}
