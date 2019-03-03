//
//  Constants.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-02.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

let BLACK_BACKGROUND = UIColor.black.withAlphaComponent(0.6).cgColor

let BASE_URL = "https://swapi.co/api/"
let PERSON_URL = "\(BASE_URL)people/"

typealias PersonResponseCompletion = (Person?) -> ()
typealias HomeworldResponseCompletion = (Homeworld?) -> ()
typealias VehicleResponseCompletion = (Vehicle?) -> ()

