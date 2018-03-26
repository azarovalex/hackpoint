//
//  ShadowView.swift
//  hackpoint
//
//  Created by Alex Azarov on 3/26/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        super.awakeFromNib()
    }
    

}
