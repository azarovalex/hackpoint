//
//  FeedCell.swift
//  hackpoint
//
//  Created by Alex Azarov on 4/9/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImg: UIImage, email: String, content: String) {
        self.profileImg.image = profileImg
        self.emailLbl.text = email
        self.contentLbl.text = content
    }

}
