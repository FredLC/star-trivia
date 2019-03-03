//
//  FilmsVC.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-03.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    @IBOutlet weak var releasedLabel: UILabel!
    @IBOutlet weak var crawlLabel: UITextView!
    @IBOutlet weak var previousButton: FadeEnabledButton!
    @IBOutlet weak var nextButton: FadeEnabledButton!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
    }
    
    func setButtonState() {
        
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        setButtonState()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        setButtonState()
    }

}
