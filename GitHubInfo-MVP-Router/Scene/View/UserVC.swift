//
//  ViewController.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class UserVC: UIViewController {

    @IBOutlet weak var nameTextFieled: UITextField!
    @IBOutlet weak var repoLabel: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    public var presenter: UserPresenter?
    
    
    @IBAction func btnShow(_ sender: Any) {
        
        if let username = nameTextFieled.text{
            presenter?.viewDidLoad(name: username)}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }


}

