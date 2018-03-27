//
//  AuthVC.swift
//  hackpoint
//
//  Created by Alex Azarov on 3/26/18.
//  Copyright © 2018 Alex Azarov. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInWithVKBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func singInWithFBBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func singInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginVC")
        present(loginVC!, animated: true, completion: nil)
    }
}
