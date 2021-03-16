//
//  PostCell.swift
//  Parstagram
//
//  Created by Efrain Pamatz on 3/15/21.
//  Copyright © 2021 Efrain Pamatz. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
