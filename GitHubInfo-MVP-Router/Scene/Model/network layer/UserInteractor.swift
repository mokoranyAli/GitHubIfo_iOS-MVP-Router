//
//  UserInteractor.swift
//  GitHubInfo-MVP-Router
//
//  Created by Mohamed Korany Ali on 7/27/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import Alamofire
import Foundation

class UserInteractor {
    private  var  data:Data? = nil
    
    func getSelectedUser(name:String , completionHandler: @escaping (User) -> ())
    {
        
        
        let gitUrl = URL(string: "https://api.github.com/users/" + name)
                request(gitUrl!).response { (response) in
            print(response)
            self.data = response.data
            // print(self.data)
            
            if let myData = self.data {
                
                let decoder = JSONDecoder()
                let user = try! decoder.decode(User.self, from: myData)
                
              
                
                completionHandler(user)
                
            }
            
            
        }
        
    }
}
