//
//  UserVC+PresnterDelegate.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit
import Foundation
import SVProgressHUD

extension UserVC:UserView
{
    func showIndicator() {
        SVProgressHUD.show()
    }
    
    func hideIndicator() {
        SVProgressHUD.dismiss()
    }
    
   
    
    func displayRepo(name: Int) {
        repoLabel.text = String(name)
    }
    
    func displayFollowers(name: Int) {
        followerLabel.text = String(name)
    }
    
    
    
    func displayName(name: String) {
        nameLabel.text = name
    }
    
   
    
    func displayLocation(name: String) {
        locationLabel.text = name
    }
    
    
    func displayImage(image: UIImage) {
        userImage.layer.borderWidth = 1
        userImage.layer.masksToBounds = false
        userImage.layer.borderColor = UIColor.black.cgColor
        
        userImage.clipsToBounds = true
        
        userImage.image = image 
    }
    
    
}

