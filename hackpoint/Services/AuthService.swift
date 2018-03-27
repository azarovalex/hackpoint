//
//  AuthService.swift
//  hackpoint
//
//  Created by Alex Azarov on 3/28/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_: Bool, _: Error?) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            guard let user = user else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.providerID, "email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData)
            userCreationComplete(true, nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_: Bool, _: Error?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            guard user != nil else {
                loginComplete(false, error)
                return
            }
            loginComplete(true, nil)
        }
    }
}
