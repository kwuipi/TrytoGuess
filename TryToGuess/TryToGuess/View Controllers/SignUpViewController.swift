//
//  SignUpViewController.swift
//  TryToGuess
//
//  Created by Евгений Таран on 1/23/18.
//  Copyright © 2018 Zhenya Taran. All rights reserved.
//

import Foundation
import UIKit
import Quickblox

class SignUpViewController: UIViewController {
   
    @IBOutlet weak var test: UITextField!
    @IBOutlet weak var login: UITextField?
    @IBOutlet weak var password: UITextField?
    
    //let sign = User()
    @IBAction func chechLogInButton(_ sender: UIButton) {
        signUP()
        get()
    }
    
    func signUP() {
        let user = QBUUser()
        user.login = login?.text
        user.password = password?.text

        QBRequest.signUp(user, successBlock: { (response, user) in
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "SignUpPressed", sender: self)
            }
        }) { (response) in
        }
    }

    func get() {
        var text: [String]
        let customObject = QBCOCustomObject()
        QBRequest.object(withClassName: "text", id: "5a66d584a28f9a1edef1fd50", successBlock: { (response, customObject) in
            let field = customObject?.fields["text"]
            self.test.insertText(field as! String)
        }) { (response) in

        }
    }
    

}

