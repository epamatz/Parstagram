//
//  ProfileViewController.swift
//  Parstagram
//
//  Created by Efrain Pamatz on 3/15/21.
//  Copyright © 2021 Efrain Pamatz. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let user = PFUser.current()!

        nameLabel.text = user.username
        
        if let imageFile = user["profileImage"] as? PFFileObject {
            let urlString = imageFile.url!
            let url = URL(string: urlString)!
            
            profileImageView.af.setImage(withURL: url)
        }
    }
}
