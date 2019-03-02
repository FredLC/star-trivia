//
//  ViewController.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-02.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class SelectPersonVC: UIViewController {
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession()
    }


}

