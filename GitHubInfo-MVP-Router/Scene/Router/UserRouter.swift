//
//  UserRouter.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//


import Foundation
import UIKit

class UserRouter
{
    class func createUsersVC() -> UIViewController {
        let navigationController = mainStoryboard.instantiateViewController(withIdentifier: "nav")
        if let userView = navigationController as? UserView{
            
            let interactor = UserInteractor()
            let router = UserRouter()
            let presenter = UserPresenter(view: userView, interactor: interactor, router: router)
            userView.presenter = presenter
            
            
        }
       return navigationController
    }
       
    
    
    class var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
