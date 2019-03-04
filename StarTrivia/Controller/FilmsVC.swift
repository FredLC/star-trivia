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
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    var person: Person!
    let api = FilmApi()
    var films = [String]()
    var currentFilm = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.startAnimating()
        films = person.filmUrls
        previousButton.isEnabled = false
        nextButton.isEnabled = films.count > 1
        guard let firstFilm = films.first else { return }
        getFilm(url: firstFilm)
    }
    
    func getFilm(url: String) {
        api.getFilm(url: url) { (film) in
            self.spinner.stopAnimating()
            if let film = film {
                self.setupView(film: film)
            }
        }
    }
    
    func setupView(film: Film) {
        titleLabel.text = film.title
        episodeLabel.text = String(film.episode)
        directorLabel.text = film.director
        producerLabel.text = film.producer
        releasedLabel.text = film.releaseDate
        crawlLabel.text = film.crawl
    }
    
    func setButtonState() {
        previousButton.isEnabled = currentFilm == 0 ? false : true
        nextButton.isEnabled = currentFilm == films.count - 1 ? false : true
        getFilm(url: films[currentFilm])
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        currentFilm -= 1
        setButtonState()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        currentFilm += 1
        setButtonState()
    }

}
