//
//  UserPresenter.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD
protocol UserView: class {
    
     var presenter: UserPresenter? { get set }
    
    func showIndicator()
    func hideIndicator()
    
    func displayName(name: String)
    func displayRepo(name: Int)
    func displayLocation(name: String)
    func displayFollowers(name: Int)
    func displayImage(image: UIImage )
}


class UserPresenter {
    private let interactor: UserInteractor
    private weak var view: UserView?
    private let router: UserRouter
    private weak var user: User?
    
    init(view: UserView? ,interactor: UserInteractor , router: UserRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
    
   
    
    public func viewDidLoad(name: String)
    {
       
        getUsers(name: name)
        
    }
    
    func getUsers(name: String) {
        print(interactor)
        print(router)
        print(UserView.self)
        print("ss")
        self.view?.showIndicator()
        interactor.getSelectedUser(name: name, completionHandler: { (myUser
            ) in
         
           
            
            self.view?.displayName(name: (myUser.name)!)
            self.view?.displayLocation(name: (myUser.location)!)
            self.view?.displayFollowers(name:( myUser.followers)!)
            self.view?.displayRepo(name: (myUser.repos)!)
            self.view?.displayImage(image: self.convertImage(image: myUser.avatarUrl!))
            
            self.view?.hideIndicator()
            
        })
    }

    private func convertImage(image: URL)-> UIImage{
        
       
            let data = try? Data(contentsOf: image)
            let myImage: UIImage = UIImage(data: data!)!
       
        
        return myImage
            

    }
    
}
