//
//  BlackBackgroundView.swift
//  StarTrivia
//
//  Created by Fred Lefevre on 2019-03-02.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit

class BlackBackgroundView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = BLACK_BACKGROUND
        layer.cornerRadius = 10
    }
}

class BlackBackgroundButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = BLACK_BACKGROUND
        layer.cornerRadius = 10
    }
}
